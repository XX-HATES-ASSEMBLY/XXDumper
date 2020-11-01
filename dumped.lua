local function a(c)
		local i, h, e = "", "", {}
		local b = 256;
		local g = {}
		for a = 0, 256 - 1 do
			g[a] = string.char(a)
		end;
		local j = 1;
		local function a()
			local b = tonumber(string.sub(c, j, j), 36)
			j = j + 1;
			local a = tonumber(string.sub(c, j, j + b - 1), 36)
			j = j + b;
			return a
		end;
		i = string.char(a())
		e[1] = i;
		while j < #c do
			local a = a()
			if g[a] then
				h = g[a]
			else
				h = i..string.sub(i, 1, 1)
			end;
			g[b] = i..string.sub(h, 1, 1)
			e[#e + 1], i, b = h, h, b + 1
		end;
		return table.concat(e)
	end;

	local i = a('26226127526027527826121526E27727926127124926226427824P24R24W25324T26125S27825N27927D26127T26127726327S27528027V26526727825T27Y27W28026526127428726127J28E27527428C28326126527R27528C27D27V27V279');

	local a = (bit or bit32);
	local m = a and a.bxor or function(f, e)
		local d, c, a = 1, 0, 10
		while f > 0 and e > 0 do
			local b, a = f % 2, e % 2
			if b ~= a then
				c = c + d
			end
			f, e, d = (f - b) / 2, (e - a) / 2, d * 2
		end
		if f < e then
			f = e
		end
		while f > 0 do
			local a = f % 2
			if a > 0 then
				c = c + d
			end
			f, d = (f - a) / 2, d * 2
		end
		return c
	end

	local function n(a, c, b)
		if b then
			local a = (a / 2 ^ (c - 1)) % 2 ^ ((b - 1) - (c - 1) + 1);
			return a - a % 1;
		else
			local b = 2 ^ (c - 1);
			return (a % (b + b) >= b) and 1 or 0;
		end;
	end;

	local p = 1;
	local function o()
		local a, c, b, d = string.byte(i, p, p + 3);
		a = m(a, 217)
		c = m(c, 217)
		b = m(b, 217)
		d = m(d, 217)
		p = p + 4;
		return (d * 16777216) + (b * 65536) + (c * 256) + a;
	end;

	local function j()
		local a = m(string.byte(i, p, p), 217);
		p = p + 1;
		return a;
	end;

	local function k()
		local b, a = string.byte(i, p, p + 2);
		b = m(b, 217)
		a = m(a, 217)
		p = p + 2;
		return (a * 256) + b;
	end;

	local function d()
		local a = o();
		local d = o();
		local b = 1;
		local a = (n(d, 1, 20) * (4294967296)) + a;
		local e = n(d, 21, 31);
		local d = ((-1) ^ n(d, 32));
		if (e == 0) then
			if (a == 0) then
				return d * 0;
			else
				e = 1;
				b = 0;
			end;
		elseif (e == 2047) then
			return (a == 0) and (d * (1 / 0)) or (d * (0 / 0));
		end;
		return math.ldexp(d, e - 1023) * (b + (a / (4.5035996273705e+015)));
	end;

	local a = o;
	local function c(d)
		local c;
		if (not d) then
			d = a();
			if (d == 0) then
				return '';
			end;
		end;
		c = string.sub(i, p, p + d - 1);
		p = p + d;
		local a = {}
		for b = 1, #c do
			a[b] = string.char(m(string.byte(string.sub(c, b, b)), 217))
		end
		return table.concat(a);
	end;

	local a = o;
	local function b(...)
		return {
			...
		}, g('#', ...)
	end

	local function f()
		local e = {};
		local b = {};
		local a = {};
		local g = {
			[2] = b,
			[3] = nil,
			[4] = a,
			[1] = e,
		};
		local a = o()
		local h = {}
		for a = 1, a do
			local b = j();
			local e;
			if (b == 0) then
				e = (j() ~= 0);
			elseif (b == 1) then
				e = d();
			elseif (b == 3) then
				e = c();
			end;
			h[a] = e;
		end;
		g[3] = j();
		for a = 1, o() do
			local b = j();
			if (n(b, 1, 1) == 0) then
				local c = n(b, 2, 3);
				local b = n(b, 4, 6);
				local d = {
					k(),
					k(),
					nil,
					nil
				};
				if (c == 0) then
					d[3] = k();
					d[4] = k();
				elseif (c == 1) then
					d[3] = o();
				elseif (c == 2) then
					d[3] = o() - (65536)
				elseif (c == 3) then
					d[3] = o() - (65536)
					d[4] = k();
				end;
				if (n(b, 1, 1) == 1) then
					d[2] = h[d[2]]
				end
				if (n(b, 2, 2) == 1) then
					d[3] = h[d[3]]
				end
				if (n(b, 3, 3) == 1) then
					d[4] = h[d[4]]
				end
				e[a] = d;
			end
		end;
		for a = 1, o() do
			b[a - 1] = f();
		end;
		return g;
	end;

	local function a(d, a, e)
		d = (d == true and f()) or d;

		return (function(...)
			local c = d[1];
			local h = d[3];
			local a = d[2];
			local a = b
			local i = 1;
			local a = -1;
			local b = {};
			local f = {
				...
			};
			local d = select('#', ...) - 1;
			local a = {};
			local g = {};

			for a = 0, d do
				if (a >= h) then
					b[a - h] = f[a + 1];
				else
					g[a] = f[a + 1];
				end;
			end;

			local a = d - h + 1
			local d;
			local a;
			while true do
				d = c[i];
				a = d[1];
				if a <= 6 then
					if a <= 2 then
						if a <= 0 then
							g[d[2]] = d[3];
						elseif a == 1 then
							do
								return
							end;
						else
							g[d[2]] = e[d[3]];
						end;
					elseif a <= 4 then
						if a > 3 then
							local c = d[2];
							local b = g[c]
							local a = g[c + 2];
							if (a > 0) then
								if (b > g[c + 1]) then
									i = d[3];
								else
									g[c + 3] = b;
								end
							elseif (b < g[c + 1]) then
								i = d[3];
							else
								g[c + 3] = b;
							end
						else
							local a = d[2]
							g[a](g[a + 1])
						end;
					elseif a > 5 then
						local c = d[2];
						local b = g[c]
						local a = g[c + 2];
						if (a > 0) then
							if (b > g[c + 1]) then
								i = d[3];
							else
								g[c + 3] = b;
							end
						elseif (b < g[c + 1]) then
							i = d[3];
						else
							g[c + 3] = b;
						end
					else
						g[d[2]] = d[3];
					end;
				elseif a <= 9 then
					if a <= 7 then
						g[d[2]] = g[d[3]];
					elseif a == 8 then
						g[d[2]] = g[d[3]];
					else
						local c = d[2];
						local a = g[c + 2];
						local b = g[c] + a;
						g[c] = b;
						if (a > 0) then
							if (b <= g[c + 1]) then
								i = d[3];
								g[c + 3] = b;
							end
						elseif (b >= g[c + 1]) then
							i = d[3];
							g[c + 3] = b;
						end
					end;
				elseif a <= 11 then
					if a > 10 then
						do
							return
						end;
					else
						local a = d[2]
						g[a](g[a + 1])
					end;
				elseif a > 12 then
					g[d[2]] = e[d[3]];
				else
					local c = d[2];
					local a = g[c + 2];
					local b = g[c] + a;
					g[c] = b;
					if (a > 0) then
						if (b <= g[c + 1]) then
							i = d[3];
							g[c + 3] = b;
						end
					elseif (b >= g[c + 1]) then
						i = d[3];
						g[c + 3] = b;
					end
				end;
				i = i + 1;
			end;
		end);
	end;
	return a(true, {}, getfenv())();