import PySimpleGUI as sg
import multiprocessing as mp
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg, FigureCanvasAgg
from matplotlib.figure import Figure
import sqlite3

boat_db = "/home/pi/MARC2023Demo/demo/boat.db"
# boat_db = "/home/ar/MARC2023Demo/demo/boat.db"

# angle_text = '0'
# speed_text = '0'

def draw_figure(canvas, figure, loc=(0, 0)):
    figure_canvas_agg = FigureCanvasTkAgg(figure, canvas)
    figure_canvas_agg.draw()
    figure_canvas_agg.get_tk_widget().pack(side='top', fill='both', expand=1)
    return figure_canvas_agg

def gui_func():
    sg.theme('Black')

    # left_col = [[sg.Text('Camera View')],
    #             [sg.Canvas(background_color=sg.theme_button_color()[1], size=(640,480))],
    #             [sg.Text('Camera View')]]

    pow_row = [[sg.Text('Power')],
                [sg.Canvas(background_color=sg.theme_button_color()[1], size=(225,480), key='-CANVAS1-')]]



    layout = [[sg.Frame(layout=pow_row, title='LEAN GUI')]]


    window = sg.Window('LEAN Robot GUI', layout, finalize=True)

    canvas_elem1 = window['-CANVAS1-']
    canvas1 = canvas_elem1.TKCanvas

    fig = Figure()
    act = fig.add_subplot(121)
    act.set_xlabel("Time (s)")
    act.set_ylabel("Actuation Power (W)")
    act.grid()
    comp = fig.add_subplot(122)
    comp.set_xlabel("Time (s)")
    comp.set_ylabel("Computation Power (W)")
    comp.grid()
    fig_agg = draw_figure(canvas1, fig)

    while True:
        event, values = window.read(timeout=10)
        if event in ('Exit', None):
            exit(69)
            break

        act.cla()                    # clear the subplot
        act.grid()                   # draw the grid
        comp.cla()
        act.grid()

        with sqlite3.connect(boat_db) as c:
            act_data_entries = c.execute('''SELECT * FROM actuation_power_data ORDER BY rowid DESC LIMIT 5;''').fetchall()
            comp_data_entries = c.execute('''SELECT * FROM computation_power_data ORDER BY rowid DESC LIMIT 5;''').fetchall()
            # angle_entry = c.execute('''SELECT * FROM angle_data ORDER BY rowid DESC LIMIT 1;''').fetchall()
            # speed_entry = c.execute('''SELECT * FROM speed_data ORDER BY rowid DESC LIMIT 1;''').fetchall()
            act_power_y = []
            act_time_x = []
            comp_power_y = []
            comp_time_x = []

            # current_angle = angle_entry[0]
            # current_speed = speed_entry[0]
            # angle_text = str(current_angle)
            # speed_text = str(current_speed)

            for entry in act_data_entries:
                act_power_y.append(entry[0])
                act_time_x.append(entry[1])
            for entry in comp_data_entries:
                comp_power_y.append(entry[0])
                comp_time_x.append(entry[1])
            

        act.plot(act_time_x, act_power_y,  color='purple')
        comp.plot(comp_time_x, comp_power_y,  color='purple')

        # window['angle_key'].update(angle_text)
        # window['speed_key'].update(speed_text)

        # window.refresh()

        fig_agg.draw()

    window.close()

gui_func()
