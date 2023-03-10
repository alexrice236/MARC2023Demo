"""LCM type definitions
This file automatically generated by lcm.
DO NOT MODIFY BY HAND!!!!
"""

try:
    import cStringIO.StringIO as BytesIO
except ImportError:
    from io import BytesIO
import struct

class boat_data(object):
    __slots__ = ["comp_power", "act_power", "angle", "speed"]

    __typenames__ = ["double", "double", "double", "double"]

    __dimensions__ = [None, None, None, None]

    def __init__(self):
        self.comp_power = 0.0
        self.act_power = 0.0
        self.angle = 0.0
        self.speed = 0.0

    def encode(self):
        buf = BytesIO()
        buf.write(boat_data._get_packed_fingerprint())
        self._encode_one(buf)
        return buf.getvalue()

    def _encode_one(self, buf):
        buf.write(struct.pack(">dddd", self.comp_power, self.act_power, self.angle, self.speed))

    def decode(data):
        if hasattr(data, 'read'):
            buf = data
        else:
            buf = BytesIO(data)
        if buf.read(8) != boat_data._get_packed_fingerprint():
            raise ValueError("Decode error")
        return boat_data._decode_one(buf)
    decode = staticmethod(decode)

    def _decode_one(buf):
        self = boat_data()
        self.comp_power, self.act_power, self.angle, self.speed = struct.unpack(">dddd", buf.read(32))
        return self
    _decode_one = staticmethod(_decode_one)

    _hash = None
    def _get_hash_recursive(parents):
        if boat_data in parents: return 0
        tmphash = (0xf84199a46f385283) & 0xffffffffffffffff
        tmphash  = (((tmphash<<1)&0xffffffffffffffff) + (tmphash>>63)) & 0xffffffffffffffff
        return tmphash
    _get_hash_recursive = staticmethod(_get_hash_recursive)
    _packed_fingerprint = None

    def _get_packed_fingerprint():
        if boat_data._packed_fingerprint is None:
            boat_data._packed_fingerprint = struct.pack(">Q", boat_data._get_hash_recursive([]))
        return boat_data._packed_fingerprint
    _get_packed_fingerprint = staticmethod(_get_packed_fingerprint)

