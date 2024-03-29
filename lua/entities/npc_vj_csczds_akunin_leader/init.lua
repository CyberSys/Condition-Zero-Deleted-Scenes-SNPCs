AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_hlr/czeror/asian_punk.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.VJ_NPC_Class = {"CLASS_CS_TERRORIST"}
ENT.StartHealth = 180

ENT.GeneralSoundPitch1 = 80
ENT.GeneralSoundPitch2 = 80
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Faction_CustomOnInitialize()
	self.SoundTbl_Idle = {"vj_hlr/czeror_npc/t/t_beonlook_ja.wav","vj_hlr/czeror_npc/t/t_couldshow_ja.wav","vj_hlr/czeror_npc/t/t_damnrats_ja.wav","vj_hlr/czeror_npc/t/t_idle1_am.wav","vj_hlr/czeror_npc/t/t_idle2_am.wav","vj_hlr/czeror_npc/t/t_idle3_am.wav","vj_hlr/czeror_npc/t/t_idle4_am.wav"}
	self.SoundTbl_IdleDialogue = {"vj_hlr/czeror_npc/t/t_whatstat_ja.wav","vj_hlr/czeror_npc/t/t_repin_ja.wav","vj_hlr/czeror_npc/t/t_anysign_ja.wav","vj_hlr/czeror_npc/t/t_echeckin_ja.wav","vj_hlr/czeror_npc/t/t_makesno_ja.wav"}
	self.SoundTbl_IdleDialogueAnswer = {"vj_hlr/czeror_npc/t/t_rogerl_ja.wav","vj_hlr/czeror_npc/t/t_allq_ja.wav","vj_hlr/czeror_npc/t/t_areasec_ja.wav"}
	self.SoundTbl_CombatIdle = {"vj_hlr/czeror_npc/t/t_youdie_ja.wav","vj_hlr/czeror_npc/t/t_letsgo_ja.wav","vj_hlr/czeror_npc/t/t_movein_ja.wav","vj_hlr/czeror_npc/t/t_nochance_ja.wav","vj_hlr/czeror_npc/t/t_wemakesrry_ja.wav"}
	self.SoundTbl_Investigate = {"vj_hlr/czeror_npc/t/t_whos_ja.wav","vj_hlr/czeror_npc/t/t_stayalm_ja.wav","vj_hlr/czeror_npc/t/t_defnotwind_ja.wav","vj_hlr/czeror_npc/t/t_gotanint_ja.wav","vj_hlr/czeror_npc/t/t_heardsomw_ja.wav","vj_hlr/czeror_npc/t/t_heywhat_ja.wav","vj_hlr/czeror_npc/t/t_heyyou_ja.wav","vj_hlr/czeror_npc/t/t_igocheck_ja.wav","vj_hlr/czeror_npc/t/t_ithink_ja.wav","vj_hlr/czeror_npc/t/t_menweapr_ja.wav"}
	self.SoundTbl_LostEnemy = {"vj_hlr/czeror_npc/t/t_whereare_ja.wav","vj_hlr/czeror_npc/t/t_mustbewind_ja.wav"}
	self.SoundTbl_Alert = {"vj_hlr/czeror_npc/t/t_theretheya_ja.wav","vj_hlr/czeror_npc/t/t_shootthem_ja.wav","vj_hlr/czeror_npc/t/t_attack_ja.wav","vj_hlr/czeror_npc/t/t_diepig_ja.wav","vj_hlr/czeror_npc/t/t_gethim_ja.wav","vj_hlr/czeror_npc/t/t_intrudov_ja.wav","vj_hlr/czeror_npc/t/t_kilhim_ja.wav","vj_hlr/czeror_npc/t/t_killthemall_ja.wav"}
	self.SoundTbl_GrenadeAttack = {"vj_hlr/czeror_npc/t/t_grenade_ja.wav"}
	self.SoundTbl_OnGrenadeSight = {"vj_hlr/czeror_npc/t/t_lookout_ja.wav","vj_hlr/czeror_npc/t/t_run_ja.wav","vj_hlr/czeror_npc/t/t_takecov_ja.wav"}
	self.SoundTbl_OnKilledEnemy = {"vj_hlr/czeror_npc/t/t_gonnag_ja.wav","vj_hlr/czeror_npc/t/t_thatall_ja.wav"}
	self.SoundTbl_AllyDeath = {"vj_hlr/czeror_npc/t/t_whathapp_ja.wav",}
	self.SoundTbl_Pain = {"vj_hlr/czeror_npc/t/t_pain1_ja.wav","vj_hlr/czeror_npc/t/t_pain2_ja.wav","vj_hlr/czeror_npc/t/t_pain3_ja.wav","vj_hlr/czeror_npc/t/t_pain4_ja.wav","vj_hlr/czeror_npc/t/t_pain3_ja.wav"}
	self.SoundTbl_Death = {"vj_hlr/czeror_npc/t/t_death1_ja.wav","vj_hlr/czeror_npc/t/t_death2_ja.wav","vj_hlr/czeror_npc/t/t_death3_ja.wav","vj_hlr/czeror_npc/t/t_death4_ja.wav"}
	self.Faction_WepBG = 1
	local randwep = math.random(1,4)
		if randwep == 1 then
			self:SetBodygroup(1,0) --mp5
		elseif randwep == 2 then
			self:SetBodygroup(1,1) --shotgun
		elseif randwep == 3 then
			self:SetBodygroup(1,4) --ak47
		elseif randwep == 4 then
			self:SetBodygroup(1,7) --m60
		end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2020 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/