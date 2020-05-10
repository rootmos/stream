function loaded(ev)

    title = mp.get_property("media-title")
    f = io.open(os.getenv("TITLE_FILE"), "w")
    f:write(title)
    f:write("\n")
    f:close()

    i = mp.get_property("playlist-pos")
    link = mp.get_property(string.format("playlist/%d/title", i))
    if(link ~= nil) then
        f = io.open(os.getenv("LINK_FILE"), "w")
        f:write(link)
        f:write("\n")
        f:close()
    end
end

mp.register_event("file-loaded", loaded)
