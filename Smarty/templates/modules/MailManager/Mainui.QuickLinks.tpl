{*+**********************************************************************************
 * The contents of this file are subject to the vtiger CRM Public License Version 1.1
 * ("License"); You may not use this file except in compliance with the License
 * The Original Code is:  vtiger CRM Open Source
 * The Initial Developer of the Original Code is vtiger.
 * Portions created by vtiger are Copyright (C) vtiger.
 * All Rights Reserved.
 ************************************************************************************}
<table cellpadding=0 cellspacing=0 border=0 class="small" width="98%">
<tr>
	<td class="txtGreen" style="padding-left: 5px;"><strong>{'LBL_Mailbox'|@getTranslatedString}</strong></td>
</tr>
<tr>
	<td style="padding-left: 5px;" class="dvtContentSpace">
	<table cellpadding=2 cellspacing=0 border=0 class="small cblds-table-bordersp_medium cblds-table-bordersp_medium" width="100%">

		{if $MAILBOX && $MAILBOX->exists()}
		<tr>
			<td>
                <input type=hidden name="mm_selected_folder" id="mm_selected_folder">
                <input type="hidden" name="_folder" id="mailbox_folder">
			</td>
		</tr>
		<tr>
			<td nowrap="nowrap" class="cblds-p_small"><svg class="slds-icon slds-page-header__icon" id="page-header-icon" aria-hidden="true"> <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="include/LD/assets/icons/standard-sprite/svg/symbols.svg#email"></use> </svg></td>
			<td class="cblds-p_medium"><a style='display: inline-block;
    color: #ffffff!important;
    background-color: #3498db;
    border: solid 1px #3498db;
    border-radius: 5px;
    box-sizing: border-box;
    cursor: pointer;
    text-decoration: none;
    font-size: 14px;
    font-weight: bold;
    margin: 0;
    padding: -38px 12px;
    text-transform: capitalize;
    border-color: #3498db;' href="#Compose" id="_mailfolder_mm_compose" onclick="MailManager.mail_compose();">{'LBL_Compose'|@getTranslatedString}</a></td>
		</tr>
		<tr>
			<td nowrap="nowrap" class="cblds-p_small><svg class="slds-icon" aria-hidden="true"><svg class="slds-icon slds-page-header__icon" id="page-header-icon" aria-hidden="true"> <use xlink:href="include/LD/assets/icons/utility-sprite/svg/symbols.svg#refresh"></use> </svg></td>
			<td class="cblds-p_medium"><a style='display: inline-block;
    color: #ffffff!important;
    background-color: #3498db;
    border: solid 1px #3498db;
    border-radius: 5px;
    box-sizing: border-box;
    cursor: pointer;
    text-decoration: none;
    font-size: 14px;
    font-weight: bold;
    margin: 0;
    padding: -38px 12px;
    text-transform: capitalize;
    border-color: #3498db;'href='#Reload' id="_mailfolder_mm_reload" onclick="MailManager.reload_now();">{'LBL_Refresh'|@getTranslatedString}</a></td>
		</tr>
		{/if}
		<tr>
			<td nowrap="nowrap" class="cblds-p_small"><svg class="slds-icon slds-page-header__icon" id="page-header-icon" aria-hidden="true"> <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="include/LD/assets/icons/utility-sprite/svg/symbols.svg#settings"></use> </svg></td>
			<td class="cblds-p_medium"><a style='display: inline-block;
    color: #ffffff!important;
    background-color: #3498db;
    border: solid 1px #3498db;
    border-radius: 5px;
    box-sizing: border-box;
    cursor: pointer;
    text-decoration: none;
    font-size: 14px;
    font-weight: bold;
    margin: 0;
    padding: -38px 12px;
    text-transform: capitalize;
    border-color: #3498db;' href='#Settings' id="_mailfolder_mm_settings" onclick="MailManager.open_settings();">{'JSLBL_Settings'|@getTranslatedString}</a></td>
		</tr>
		<tr>
			<td width="5px" nowrap="nowrap" class="cblds-p_small"><svg class="slds-icon" aria-hidden="true"> <use xlink:href="include/LD/assets/icons/utility-sprite/svg/symbols.svg#record_update"></use> </svg></td>
            <td class="cblds-p_medium"><a style='display: inline-block;
    color: #ffffff!important;
    background-color: #3498db;
    border: solid 1px #3498db;
    border-radius: 5px;
    box-sizing: border-box;
    cursor: pointer;
    text-decoration: none;
    font-size: 14px;
    font-weight: bold;
    margin: 0;
    padding: -38px 12px;
    text-transform: capitalize;
    border-color: #3498db;'href="#Drafts" id="_mailfolder_mm_drafts" onclick="MailManager.folder_drafts();">{'LBL_Drafts'|@getTranslatedString}</a></td>
		</tr>
	</table>
		{include file="SentMailFolders.tpl"}
	</td>
</tr>
</table>
