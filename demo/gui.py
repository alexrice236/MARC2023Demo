import PySimpleGUI as sg
import multiprocessing as mp
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg, FigureCanvasAgg
from matplotlib.figure import Figure
import sqlite3

power_db = "/home/pi/MARC2023Demo/demo/power.db"

def draw_figure(canvas, figure, loc=(0, 0)):
    figure_canvas_agg = FigureCanvasTkAgg(figure, canvas)
    figure_canvas_agg.draw()
    figure_canvas_agg.get_tk_widget().pack(side='top', fill='both', expand=1)
    return figure_canvas_agg

def gui_func():
    sg.theme('Black')

    left_col = [[sg.Text('Camera View')],
                [sg.Canvas(background_color=sg.theme_button_color()[1], size=(640,480))],
                [sg.Text('Camera View')]]

    right_col = [[sg.Text('Computation Power')],
                [sg.Canvas(background_color=sg.theme_button_color()[1], size=(640,225), key='-CANVAS1-')]]



    layout = [[sg.Frame(layout=left_col, title=''), sg.Frame(layout=right_col, title='')]]


    window = sg.Window('LEAN Robot GUI', layout, finalize=True)

    canvas_elem1 = window['-CANVAS1-']
    canvas1 = canvas_elem1.TKCanvas

    fig = Figure()
    act = fig.add_subplot(211)
    act.set_xlabel("Time (s)")
    act.set_ylabel("Actuation Power (W)")
    act.grid()
    comp = fig.add_subplot(212)
    comp.set_xlabel("Time (s)")
    comp.set_ylabel("Compuatation Power (W)")
    comp.grid()
    fig_agg = draw_figure(canvas1, fig)

    while True:
        event, values = window.read(timeout=10)
        if event in ('Exit', None):
            exit(69)
            break

        ax.cla()                    # clear the subplot
        ax.grid()                   # draw the grid

        with sqlite3.connect(power_db) as c:
            act_data_entries = c.execute('''SELECT * FROM actuation_power_data ORDER BY rowid DESC LIMIT 5;''').fetchall()
            comp_data_entries = c.execute('''SELECT * FROM actuation_power_data ORDER BY rowid DESC LIMIT 5;''').fetchall()
            act_power_y = []
            act_time_x = []
            comp_power_y = []
            comp_time_x = []
            for entry in act_data_entries:
                act_power_y.append(entry[1])
                act_time_x.append(entry[2])
            for entry in comp_data_entries:
                comp_power_y.append(entry[1])
                comp_time_x.append(entry[2])
            

        act.plot(act_time_x, act_power_y,  color='purple')
        comp.plot(comp_time_x, comp_power_y,  color='purple')

        fig_agg.draw()

    window.close()

gui_func()