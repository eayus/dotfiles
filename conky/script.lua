require 'cairo'

function conky_main()
    if conky_window == nil then
        return
    end
    local cs = cairo_xlib_surface_create(conky_window.display,
                                         conky_window.drawable,
                                         conky_window.visual,
                                         conky_window.width,
                                         conky_window.height)
    cr = cairo_create(cs)
    local updates=tonumber(conky_parse('${updates}'))
    if updates>5 then
    
        --constant settings
        circleRadius = 60
        colorR, colorG, colorB, colorA = 1, 1, 1, 1

        --Circles: CPU, RAM, NETWORK
        cairo_set_source_rgba(cr, colorR, colorG, colorB, colorA)
        
        --Text: CPU, RAM, NXETWORK
        cairo_set_source_rgba(cr, 1, 1, 1, 1)
        cairo_select_font_face(cr, "FiraMono", CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_NORMAL)
        cairo_set_font_size(cr, 12)
        local extents = cairo_text_extents_t:create()
        tolua.takeownership(extents)

        -- CPU
        local cpuPerc = conky_parse("$cpu")
        local text = "CPU: " .. cpuPerc .. "%"
        cairo_text_extents(cr, text, extents)
        cairo_move_to(cr, 100 - (extents.width / 2 + extents.x_bearing), 103) --position is 400, 100 the caluclation is just to centre the text
        cairo_show_text(cr, text)
        cairo_stroke(cr)
	    cairo_set_source_rgba(cr, 0.8, 0.8, 0.8, 0.2)
        cairo_arc(cr, 100, 100, circleRadius, 0, 2*math.pi)
        cairo_stroke(cr)
	    cairo_set_source_rgba(cr, 1, 1, 1, 1)
        cairo_arc(cr, 100, 100, circleRadius, 1.5 * math.pi, (2 * math.pi * cpuPerc / 100) - (math.pi / 2))
        cairo_stroke(cr)
        

        -- RAM
        local ramPerc = conky_parse("$memperc")
        local text = "RAM: " .. ramPerc .. "%"
        cairo_text_extents(cr, text, extents)
        cairo_move_to(cr, 100 - (extents.width / 2 + extents.x_bearing), 303) --position is 400, 100 the caluclation is just to centre the text
        cairo_show_text(cr, text)
        cairo_stroke(cr)
	    cairo_set_source_rgba(cr, 0.8, 0.8, 0.8, 0.2)
        cairo_arc(cr, 100, 300, circleRadius, 0, 2*math.pi)
        cairo_stroke(cr)
	    cairo_set_source_rgba(cr, 1, 1, 1, 1)
        cairo_arc(cr, 100, 300, circleRadius, 1.5 * math.pi, (2 * math.pi * ramPerc / 100) - (math.pi / 2))
        cairo_stroke(cr)
        

-- CPU
        local songPerc = conky_parse("${exec ~/.config/conky/mpd_percent.sh}")
        local text = "SONG: " .. songPerc .. "%"
        cairo_text_extents(cr, text, extents)
        cairo_move_to(cr, 100 - (extents.width / 2 + extents.x_bearing), 503) --position is 400, 100 the caluclation is just to centre the text
        cairo_show_text(cr, text)
        cairo_stroke(cr)
        cairo_set_source_rgba(cr, 0.8, 0.8, 0.8, 0.2)
        cairo_arc(cr, 100, 500, circleRadius, 0, 2*math.pi)
        cairo_stroke(cr)
        cairo_set_source_rgba(cr, 1, 1, 1, 1)
        cairo_arc(cr, 100, 500, circleRadius, 1.5 * math.pi, (2 * math.pi * songPerc / 100) - (math.pi / 2))
        cairo_stroke(cr)
        

    end
    cairo_destroy(cr)
    cairo_surface_destroy(cs)
    cr=nil
end
