-- 

function onThink(interval, lastExecution)
    local MESSAGE = {
        "[COMMANDS] !buyhouse - !sellhouse - !serverinfo - !online - !uptime - !outfit .",
        "[TIBIA CLIENTS COMPATIVEIS]  10.00 e 11.35",
        "[BUGS?] REPORTEM EM: http://www.github.com/malucooo/otxserver-new/.",
        "[FEATURES] NEW DEPOT, NEW SPAWN, NEW CAST SYSTEM, NEW NPC SYSTEM VIA BANK BALANCE, NEW CRITICAL BOOST SYSTEM, NEW POTIONS, REWARD SYSTEM, PREY SYSTEM, IMBUEMENT SYSTEM, INSPECTION SYSTEM, CASKS AND KEGS, NEW BLESSING SYSTEM, FULL GLOBAL MAP WITH HALLS OF ROPE, WAR ANTIENTROSA, BATTLEFIELD, CAPTURE THE FLAG, LAST STANDING MAN AND ZOOMBIE EVENT.",
		"[AGRADECIMENTOS] TODOS QUE COLABORAM DIARIAMENTE MOSTRANDO E CORRIGINDO BUGS E PRINCIPALMENTE A TODOS QUE ACREDITARAM E ACREDITAM NO PROJETO.",
		"[PUBLICIDADE] DATAPACK DISPONIBILIZADO GRATUITAMENTE POR ERICK NUNES(MALUCOOO).",
		"[CONTATO] FACEBOOK:https://www.facebook.com/erick.nunes.75/ SKYPE: e_nunes@live.com WHATSAPP: +5493412802546.",
    }
    Game.broadcastMessage(MESSAGE[math.random(1, #MESSAGE)], MESSAGE_EVENT_ADVANCE) 
    return true
end