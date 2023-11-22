local res = {}


function res.run()
    
    iup.Message("Hello World 1","Hello world from IUP.")
    -- to be able to run this script inside another context
    if (iup.MainLoopLevel()==0) then
        iup.MainLoop()
        iup.Close()
    end
end

function  res.dialog()
    print("test")
    label = iup.label{title = "Hello world from IUP."}
dlg = iup.dialog{
  iup.vbox{label},
  title = "Hello World 2",
}

dlg:showxy(iup.CENTER,iup.CENTER)

-- to be able to run this script inside another context
if (iup.MainLoopLevel()==0) then
  iup.MainLoop()
  iup.Close()
end
end


function res.interact()
    function btn_exit_cb(self)
        iup.Message("Hello World Message",math.random(1,100))
        -- Exits the main loop
        -- return iup.CLOSE
      end
      
      button = iup.button{title = "get a random number", action = btn_exit_cb}
      
      vbox = iup.vbox{button}
      dlg = iup.dialog{
        vbox,
        title = "Hello World 3"
      }
      
      dlg:showxy(iup.CENTER,iup.CENTER)
      
      -- to be able to run this script inside another context
      if (iup.MainLoopLevel()==0) then
        iup.MainLoop()
        iup.Close()
      end
end

function res.layout()
    label = iup.label{title = "Hello world from IUP."}
button = iup.button{title = "random number"}

function button:action()
  -- Exits the main loop
--   return iup.CLOSE  
print(math.random(1,100))
end

vbox = iup.vbox{label,button}
dlg = iup.dialog{
  vbox,
  title = "Hello World 4"
}

dlg:showxy(iup.CENTER,iup.CENTER)

-- to be able to run this script inside another context
if (iup.MainLoopLevel()==0) then
  iup.MainLoop()
  iup.Close()
end
end

function res.improved_layout()
    label = iup.label{title = "Hello world from IUP."}
button = iup.button{title = "OK"}

function button:action()
  -- Exits the main loop
  return iup.CLOSE  
end

vbox = iup.vbox{
  label,
  button,
  alignment = "acenter",
  gap = "10",
  margin = "10x10"
}
dlg = iup.dialog{
  vbox,
  title = "Hello World 5"
}

dlg:showxy(iup.CENTER,iup.CENTER)

-- to be able to run this script inside another context
if (iup.MainLoopLevel()==0) then
  iup.MainLoop()
  iup.Close()
end
end
return res