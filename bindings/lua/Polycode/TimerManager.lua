class "TimerManager"


function TimerManager:TimerManager(...)
	local arg = {...}
	for k,v in pairs(arg) do
		if type(v) == "table" then
			if v.__ptr ~= nil then
				arg[k] = v.__ptr
			end
		end
	end
	if self.__ptr == nil and arg[1] ~= "__skip_ptr__" then
		self.__ptr = Polycode.TimerManager(unpack(arg))
	end
end

function TimerManager:removeTimer(timer)
	local retVal = Polycode.TimerManager_removeTimer(self.__ptr, timer.__ptr)
end

function TimerManager:addTimer(timer)
	local retVal = Polycode.TimerManager_addTimer(self.__ptr, timer.__ptr)
end

function TimerManager:Update()
	local retVal =  Polycode.TimerManager_Update(self.__ptr)
end

function TimerManager:__delete()
	if self then Polycode.delete_TimerManager(self.__ptr) end
end
