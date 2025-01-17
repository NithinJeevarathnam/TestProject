﻿    <%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" %>
<asp:Content ID="headerContent" ContentPlaceHolderID="head" runat="server">
    <script src="scripts/libraries/idle-timer.js" type="text/javascript"></script>
    <script src="scripts/libraries/tablesorter.js" type="text/javascript"></script>
    <script src="scripts/libraries/tablesorter.filter.js" type="text/javascript"></script>
    <script src="scripts/libraries/tablesorter.pager.js" type="text/javascript"></script>
    <script src="scripts/libraries/yui.js"></script>
    <script src="scripts/controls/loading.js" type="text/javascript"></script>
    <script src="scripts/controls/grid.js" type="text/javascript"></script>
    <script src="scripts/controllers/init.js" type="text/javascript"></script>
    <link href="css/init.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="bodyContent" ContentPlaceHolderID="body" runat="server">
    <div id="div_wwid">
        <table cellpadding="0" cellspacing="0">
            <tbody id="table_wwid">
            <tr id="tr_wwid">
                <td>
                    <label for="input_wwid">WWID:</label>
                </td>
                <td>
                    <fieldset>
                        <input id="input_wwid" type="text" maxlength="8" />
                    </fieldset>
                </td>
                <td>
                    <fieldset>
                        <input id="input_find" type="button" value="Find" />
                    </fieldset>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    <div id="tabs">
        <ul>
            <li id="tab1"><a href="#tabs-1">Add</a></li> 
            <li id="tab2"><a href="#tabs-2">Move</a></li> 
            <li id="tab3"><a href="#tabs-3">Delete</a></li> 
            <li id="tab4"><a href="#tabs-4">SfB</a></li>
            <li id="tab5"><a href="#tabs-5">Available Number</a></li>
            <%--MTR Rooms Migration Changes : BOC--%>
            <%--<li id="tab6"><a href="#tabs-6">Lync Bulk</a></li>--%>
            <li id="tab6"><a href="#tabs-6">Bulk Uploads</a></li>
            <%--MTR Rooms Migration Changes : EOC--%>
            <li id="tab7"><a href="#tabs-7">In Progress Jobs</a></li>
            <li id="tab8"><a href="#tabs-8">Incidents</a></li>
            <li id="tab9"><a href="#tabs-9">About</a></li>              
        </ul>
        <div id="tabs-1">
            <br />
            <br />
            <h3 id="addPhoneTitle"></h3>        
            <table>           
                <tr>
                    <td>
                        <label for="TxPhoneNumber"> Phone Number:</label>
                    </td>
                    <td>
                        <fieldset>
                            <input id="TxPhoneNumber" type="text" maxlength="8" />
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="cbPhoneModel">Phone Model:</label>
                    </td>
                    <td>
                        <fieldset>
                            <select id="cbPhoneModel">
                                <option value="7911">7911</option>
                                <option value="6945">6945</option>
                                <option value="7905">7905</option>
                                <option value="7906">7906</option>
                                <option value="7921">7921</option>
                                <option value="7940">7940</option>
                                <option value="7941">7941</option>
                                <option value="7942">7942</option>
                                <option value="7960">7960</option>
                                <option value="7961">7961</option>
                                <option value="7962">7962</option>
                                <option value="7970">7970</option>
                                <option value="CIPC">CIPC</option>
                                <option value="Lync" id="lyncOption">Lync</option>
                            </select>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="cbClassService">Class of Service:</label>
                    </td>                  
                    <td>
                        <fieldset>
                            <select id="cbClassService">
                                <option value="LD">LD</option>
                                <option value="LOCAL">LOCAL</option>
                                <option value="iNET">iNET</option>
                                <option value="INTL">INTL</option>
                            </select>
                        </fieldset>
                    </td>       
                </tr> 
                <tr>
                    <td>
                        <label id="labelSecondDevice" for="chbSecondDevice">Device Only:</label>
                    </td>                 
                    <td align="left">
                        <fieldset>
                            <input id="chbSecondDevice" type="checkbox" class="checkbox" />
                        </fieldset>
                    </td>   
                </tr>
                <tr>
                    <td>
                        <label for="TxPOMac">PO Number:</label>
                     </td>            
                    <td>
                        <fieldset>
                            <input id="TxPOMac" type="text" maxlength="12" disabled="disabled" />
                        </fieldset>
                    </td>       
                </tr>
                <tr>
                    <td align="center">
                        <fieldset>
                            <input id="BtnSubmitAdd" type="button" value="Submit" class="button" />
                        </fieldset>                                         
                    </td>
                    <td align="center">
                    <fieldset>
                            <input id="BtnResetAdd" type="button" value="Reset" class="button" />
                        </fieldset>
                    </td>
                </tr>   
            </table>       
        </div>
        <div id="tabs-2">
            <br />
            <br />
             <h3 id="movePhoneTitle"> Move Phone</h3>
            <table>
                <tr>
                    <td>
                        <p>Source:</p> 
                    </td>
                    <td>
                        <p id="p_source" class="strong">Folsom</p>  
                    </td>
                </tr>           
                <tr>
                    <td>
                        <p>Destination:</p>
                    </td>
                    <td>
                        <p id="p_destination" class="strong">Folsom PreProd</p> 
                    </td>
                </tr>
                <tr>
                    <td>
                        <input id="btnSubmitMove" type="button" value="Submit" class="button" />
                    </td>
                    <td>
                        <input id="btnSwapMove" type="button" value="Swap" class="button" />
                    </td>
                </tr>
            </table>
        </div>
        <div id="tabs-3">
            <br />
            <br />
            <h3 id="deletePhoneTitle"></h3>
            <table cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="2">
                        <label id="deletePhoneUserTag"></label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div id="div_listOfDevices"></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input id="BtnCheckAllDelete" type="button" value="Check All" class="button" />
                    </td>
                    <td>
                        <input id="BtnSubmitDelete" type="button" value="Submit" class="button" />
                    </td>
                </tr>
            </table>
        </div>
        <div id="tabs-4">
            <br />
            <br />
            <div id="div_lyncAccordion">
                <h2>Lync Only</h2>
                <div id="div_lyncOnly">
                    <h3>Convert to Lync Only Mode</h3>
                    <div id="div_addLyncOnlyForm">
                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td colspan="2">
                                    <fieldset>
                                        <input type="button" value="submit" id="buttonAddLyncOnly"  class="button" />
                                    </fieldset>
                                </td>
                            </tr>
                        </table>                    
                    </div>
                    <h3>Remove Lync Only Mode</h3>
                    <div id="div_removeLyncOnlyForm">
                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    <label for="selectRemoveLyncPhoneModel">
                                        Phone Model: 
                                    </label>
                                </td>
                                <td>
                                    <fieldset>
                                        <select id="selectRemoveLyncPhoneModel">
                                            <option value="7911">7911</option>
                                            <option value="6945">6945</option>
                                            <option value="7905">7905</option>
                                            <option value="7906">7906</option>
                                            <option value="7921">7921</option>
                                            <option value="7940">7940</option>
                                            <option value="7941">7941</option>
                                            <option value="7942">7942</option>
                                            <option value="7960">7960</option>
                                            <option value="7961">7961</option>
                                            <option value="7962">7962</option>
                                            <option value="7970">7970</option>
                                            <option value="CIPC">CIPC</option>
                                        </select>
                                    </fieldset>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="selectRemoveLyncClassOfService">
                                        Class of Service: 
                                    </label>
                                </td>
                                <td>
                                    <fieldset>
                                        <select id="selectRemoveLyncClassOfService">
                                            <option value="LD">LD</option>
                                            <option value="LOCAL">LOCAL</option>
                                            <option value="iNET">iNET</option>
                                            <option value="INTL">INTL</option>
                                        </select>
                                    </fieldset>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="inputRemoveLyncPo">
                                        PO / Mac Addr: 
                                    </label>
                                </td>
                                <td>
                                    <fieldset>
                                        <input id="inputRemoveLyncPo" type="text" maxlength="3" />
                                    </fieldset>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <fieldset>
                                        <input type="button" id="buttonRemoveLyncOnlySubmit" value="submit"  class="button" />
                                    </fieldset>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <h2>Lync Companion</h2>
                <div id="div_lyncCompanion">
                    <h3>Add Lync Companion</h3>
                    <div id="div_addLyncCompanionForm">
                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td colspan="2">
                                    <fieldset>
                                        <input type="button" value="submit" id="buttonAddLyncCompanion"  class="button" />
                                    </fieldset>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <h3>Remove Lync Companion</h3>
                    <div id="div_removeLyncCompanionForm">
                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td colspan="2">
                                    <fieldset>
                                        <input type="button" value="submit" id="buttonRemoveLyncCompanion"  class="button" />
                                    </fieldset>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div id="tabs-5">
            <br />
            <br />
            <h3>The next available inet numbers for this campus are:</h3>
            <div id="next_available_container">
                <p id="next_available"></p>
                <input type="button" id="button_refresh" class="button" value="Refresh list" />

            </div>
        </div>
        <div id="tabs-6">
            <br />
            <br />
            <%--MTR Rooms Migration Changes : BOC--%>
            <%--<h3>Lync Softphone Bulk File Upload</h3>--%>
            <h3>Lync Softphone and MTR Migration Bulk File Upload</h3>
            <%--MTR Rooms Migration Changes : EOC--%>
            <div class="right"><a href="#" id="link_newBulkRequest">New Request</a></div>
            <div id="bulkContainer"></div>
            <p id="incidentNotification"></p>
        </div>
        <div id="tabs-7">
            <br />
            <br />
            <h3>In progress jobs</h3>
            <div class="right"><a href="#" id="link_killJobs">Stop Selected jobs</a></div>
            <div id="progressJobsContainer"></div>
        </div>
        <div id="tabs-8">
            <br />
            <br />
            <h3>Incidents</h3>
            <p>Current open incidents due to SCT failures</p>
            <div id="open_incident_container">
                <p id="open_incident"></p>
                <input type="button" id="button_close_incident" class="button" value="Close Incident" />
            </div>
            <br /> 
            <p style="font-size:20px;">Historical</p>              
            <div id="bulkIncidentContainer"></div>      
        </div>
        <div id="tabs-9">
            <br />
            <br />
            <h3>About SCT</h3>
            <p>Station Configuration Tool Version <span id="appVersion"></span></p>
            <br />
            <br />
            <a href="downloadLogs.aspx" class="logsLink">[ Download Logs (CSV) ]</a>
        </div>

    </div>
</asp:Content>
