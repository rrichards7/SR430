<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="15008000">
	<Property Name="Alarm Database Computer" Type="Str">localhost</Property>
	<Property Name="Alarm Database Name" Type="Str">E__Program_Files_National_Instruments_LabVIEW_8_2_data</Property>
	<Property Name="Alarm Database Path" Type="Str">E:\Program Files\National Instruments\LabVIEW 8.2\data</Property>
	<Property Name="Data Lifespan" Type="UInt">3650</Property>
	<Property Name="Database Computer" Type="Str">localhost</Property>
	<Property Name="Database Name" Type="Str">E__Program_Files_National_Instruments_LabVIEW_8_2_data</Property>
	<Property Name="Database Path" Type="Str">E:\Program Files\National Instruments\LabVIEW 8.2\data</Property>
	<Property Name="Enable Alarms Logging" Type="Bool">false</Property>
	<Property Name="Enable Data Logging" Type="Bool">false</Property>
	<Property Name="NI.Lib.Description" Type="Str">Instrument driver for the SR430 from Stanford Research Systems. The device can be connected via GPIB or RS232 interfaces. This driver is based on VISA.

author: Dietrich Beck ,GSI
maintainer: Dietrich Beck, GSI

Copyright (C)
Gesellschaft für Schwerionenforschung, GSI
Planckstr. 1
64291 Darmstadt
Germany

Contact: D.Beck@gsi.de 

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the license, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General License for more details (http://www.gnu.org).

Gesellschaft für Schwerionenforschung, GSI
Planckstr. 1, 64291 Darmstadt, Germany
For all questions and ideas contact: M.Richter@gsi.de, K.Poppensieker, H.Brand@gsi.de or D.Beck@gsi.de.
Last update: 11-APR-2002</Property>
	<Property Name="NI.Lib.HelpPath" Type="Str"></Property>
	<Property Name="NI.Lib.Icon" Type="Bin">&amp;1#!!!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!*(!!!*Q(C=\&gt;3R&lt;&gt;N1%-&lt;RTU%#J.5!!1SN="-)U!"RI&gt;ZO&lt;A7V$J"!7O'+,+###[BS@SNQ";WA`(E['89#7!%3!SZ-_G4K?XTP`@B)5;LNM`22RUO&lt;8NT_LHU9"KK/(L].4^OLBDY[(1_`^X`7^XF\^4BX@&lt;(`^0(H`0^[@?`N\_VPN@XST`P_YEGPP%F8*;73#MIJK[M\*HG3*XG3*XG3"XG1"XG1"XG1/\G4/\G4/\G4'\G2'\G2'\G2VUYO=J',H&amp;6**E]G3A:."EB/BK,E)`%EHM34?0CKR*.Y%E`C34S=IM34?"*0YEE]&gt;&amp;0C34S**`%E(I9K3&gt;:/DC@R-,Q#4_!*0)%H]$#F!E]!##9,"AY'A;'A-4A)0)%H](#IQ".Y!E`A#4QU+`!%HM!4?!)087J6ID444I[(9?2Y()`D=4S/B[(F?"S0YX%]DI@JZ(A=DY.Q*H1'BS#HEX/#]]8R/"\_S@%Y(M@D?"Q0487(P&amp;:GUEQ\/2\$9XA-D_%R0!QBQW.Y$)`B-4Q-+].D?!S0Y4%]4#8$9XA-DQ%R*G6['9-:(9W4D-$Q]&amp;&gt;0C^6&gt;CJ*9\@X40$WI[A&gt;1`7#J(RDVA[#_Q?I&lt;J\YB[I67,["[9&gt;18L,Y1.6!^M8J!^9E[]$F3?WJ(&lt;;EVN;+7V*S;46X`]YG(QU(D/'K`XWOXWWG\X7K^8GOV7GGZ8'I_HWMWGTW_L;\:4^P6_&lt;VUT`&amp;5G\MP$^^P0CUW._0CW_W0R?&lt;LTY&gt;TWWP5[&lt;XU&amp;N[._K$DE^=];`1,0L]A3Q!!!!!</Property>
	<Property Name="NI.Lib.SourceVersion" Type="Int">352354304</Property>
	<Property Name="NI.Lib.Version" Type="Str">1.18.0.0</Property>
	<Property Name="NI.SortType" Type="Int">3</Property>
	<Property Name="SaveStatePeriod" Type="UInt">0</Property>
	<Property Name="Serialized ACL" Type="Bin">&amp;1#!!!!!!!)!"1!&amp;!!!A1%!!!@````]!!".V&lt;H.J:WZF:#"C?82F)'&amp;S=G&amp;Z!!%!!1!!!!A)!!!!#!!!!!!!!!!</Property>
	<Property Name="Use Data Logging Database" Type="Bool">true</Property>
	<Item Name="typedefs" Type="Folder">
		<Property Name="NI.LibItem.Scope" Type="Int">1</Property>
		<Item Name="SR430_VISA Control.ctl" Type="VI" URL="../SR430_VISA Control.ctl"/>
		<Item Name="SR430_seriaPollStatusByte.ctl" Type="VI" URL="../SR430_seriaPollStatusByte.ctl"/>
		<Item Name="SR430_standardEventStatusByte.ctl" Type="VI" URL="../SR430_standardEventStatusByte.ctl"/>
		<Item Name="SR430_errorStatusByte.ctl" Type="VI" URL="../SR430_errorStatusByte.ctl"/>
		<Item Name="SR430_MCSStatusByte.ctl" Type="VI" URL="../SR430_MCSStatusByte.ctl"/>
	</Item>
	<Item Name="public" Type="Folder">
		<Property Name="NI.LibItem.Scope" Type="Int">1</Property>
		<Item Name="example" Type="Folder">
			<Item Name="SR430 Getting Started.vi" Type="VI" URL="../SR430 Getting Started.vi"/>
		</Item>
		<Item Name="interface" Type="Folder">
			<Item Name="SR430_id_query.vi" Type="VI" URL="../SR430_id_query.vi"/>
			<Item Name="SR430_initialize.vi" Type="VI" URL="../SR430_initialize.vi"/>
			<Item Name="SR430_close.vi" Type="VI" URL="../SR430_close.vi"/>
			<Item Name="SR430_query_error_status_byte.vi" Type="VI" URL="../SR430_query_error_status_byte.vi"/>
			<Item Name="SR430_query_MCS_status_byte.vi" Type="VI" URL="../SR430_query_MCS_status_byte.vi"/>
			<Item Name="SR430_query_serial_poll_status_byte.vi" Type="VI" URL="../SR430_query_serial_poll_status_byte.vi"/>
			<Item Name="SR430_query_standard_event_status_byte.vi" Type="VI" URL="../SR430_query_standard_event_status_byte.vi"/>
		</Item>
		<Item Name="config" Type="Folder">
			<Item Name="SR430_get_bin_width.vi" Type="VI" URL="../SR430_get_bin_width.vi"/>
			<Item Name="SR430_get_bins_per_record.vi" Type="VI" URL="../SR430_get_bins_per_record.vi"/>
			<Item Name="SR430_get_records_per_scan.vi" Type="VI" URL="../SR430_get_records_per_scan.vi"/>
			<Item Name="SR430_get_trig_offset.vi" Type="VI" URL="../SR430_get_trig_offset.vi"/>
			<Item Name="SR430_reset.vi" Type="VI" URL="../SR430_reset.vi"/>
			<Item Name="SR430_set_bin_width.vi" Type="VI" URL="../SR430_set_bin_width.vi"/>
			<Item Name="SR430_set_bins_per_record.vi" Type="VI" URL="../SR430_set_bins_per_record.vi"/>
			<Item Name="SR430_set_cursor_on_off.vi" Type="VI" URL="../SR430_set_cursor_on_off.vi"/>
			<Item Name="SR430_set_discriminator_level.vi" Type="VI" URL="../SR430_set_discriminator_level.vi"/>
			<Item Name="SR430_set_discriminator_slope.vi" Type="VI" URL="../SR430_set_discriminator_slope.vi"/>
			<Item Name="SR430_set_externalClock_on_off.vi" Type="VI" URL="../SR430_set_externalClock_on_off.vi"/>
			<Item Name="SR430_set_trigger_level.vi" Type="VI" URL="../SR430_set_trigger_level.vi"/>
			<Item Name="SR430_set_records_per_scan.vi" Type="VI" URL="../SR430_set_records_per_scan.vi"/>
			<Item Name="SR430_set_trig_offset.vi" Type="VI" URL="../SR430_set_trig_offset.vi"/>
			<Item Name="SR430_set_trigger_slope.vi" Type="VI" URL="../SR430_set_trigger_slope.vi"/>
			<Item Name="SR430_init.vi" Type="VI" URL="../SR430_init.vi"/>
		</Item>
		<Item Name="acquisition" Type="Folder">
			<Item Name="SR430_clear.vi" Type="VI" URL="../SR430_clear.vi"/>
			<Item Name="SR430_read_ascdata.vi" Type="VI" URL="../SR430_read_ascdata.vi"/>
			<Item Name="SR430_read_bindata.vi" Type="VI" URL="../SR430_read_bindata.vi"/>
			<Item Name="SR430_pause.vi" Type="VI" URL="../SR430_pause.vi"/>
			<Item Name="SR430_scan_query.vi" Type="VI" URL="../SR430_scan_query.vi"/>
			<Item Name="SR430_start.vi" Type="VI" URL="../SR430_start.vi"/>
		</Item>
		<Item Name="utility" Type="Folder">
			<Item Name="SR430_bin_width_2_us.vi" Type="VI" URL="../SR430_bin_width_2_us.vi"/>
			<Item Name="SR430_bins_2_bins_per_record.vi" Type="VI" URL="../SR430_bins_2_bins_per_record.vi"/>
			<Item Name="SR430_bins_per_record_2_bins.vi" Type="VI" URL="../SR430_bins_per_record_2_bins.vi"/>
			<Item Name="SR430_get library version.vi" Type="VI" URL="../SR430_get library version.vi"/>
			<Item Name="SR430 Error Message.vi" Type="VI" URL="../SR430 Error Message.vi"/>
			<Item Name="SR430_us_2_bin_width.vi" Type="VI" URL="../SR430_us_2_bin_width.vi"/>
		</Item>
	</Item>
	<Item Name="private" Type="Folder">
		<Property Name="NI.LibItem.Scope" Type="Int">2</Property>
		<Item Name="SR430_interface_ready.vi" Type="VI" URL="../SR430_interface_ready.vi"/>
		<Item Name="SR430_transaction.vi" Type="VI" URL="../SR430_transaction.vi"/>
	</Item>
</Library>
