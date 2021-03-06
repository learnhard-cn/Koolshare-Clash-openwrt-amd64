<title>KoolClash - Clash for Koolshare OpenWrt/LEDE</title>
<content>
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/res/koolclash_base64.js"></script>
    <script type="text/javascript" src="/js/tomato.js"></script>
    <script type="text/javascript" src="/js/advancedtomato.js"></script>
    <script type="text/javascript" src="/layer/layer.js"></script>
    <style type="text/css">
        .box,
        #clash_tabs {
            min-width: 720px;
        }

        .koolclash-divider {
            content: '|';
            margin: 0 5px;
        }

        .koolclash-btn-container {
            padding: 4px;
            padding-left: 8px;
        }

        hr {
            opacity: 1;
            border: 1px solid #ccc;
            margin: 1rem 0;
        }

        #koolclash-ip .ip-title {
            font-weight: bold;
            color: #444;
        }

        #koolclash-ip .sk-text-success {
            color: #32b643
        }

        #koolclash-ip .sk-text-error {
            color: #e85600
        }

        #koolclash-ip p {
            margin: 2px 0;
        }

        #koolclash-btn-upload {
            margin-bottom: 8px;
            margin-left: 4px;
        }

        #koolclash-btn-submit-watchdog {
            margin-bottom: 5px;
            margin-left: 8px;
        }

        #koolclash-dns-msg {
            font-size: 85%;
            margin-top: 8px
        }

        #koolclash-config-dns {
            margin-top: 16px;
        }

        #_koolclash_config_suburl {
            width: 61.8%;
        }

        #koolclash-version-msg {
            font-size: 14px;
        }

        fieldset .help-block {
            margin: 0;
        }

        label {
            cursor: default;
        }

        label.koolclash-nav-label {
            padding: 0;
            cursor: pointer;
        }

        .koolclash-nav-radio {
            display: none;
        }

        .koolclash-nav-tab {
            display: block;
            padding: 0 15px;
            height: 40px;
            font-weight: normal;
            line-height: 40px;
            text-shadow: 0 1px 0 rgba(255, 255, 255, 0.2);
            transition: all 100ms ease;
            -webkit-transition: all 100ms ease;
            text-decoration: none;
            outline: 0;
        }

        .koolclash-nav-tab:hover {
            z-index: 999;
            color: #777777;
            background: rgba(0, 0, 0, 0.05);
            border-bottom: 2px solid rgba(0, 0, 0, 0.05);
            text-decoration: none;
        }


        #koolclash-nav-overview:checked~.nav-tabs .koolclash-nav-overview>.koolclash-nav-tab,
        #koolclash-nav-config:checked~.nav-tabs .koolclash-nav-config>.koolclash-nav-tab,
        #koolclash-nav-node:checked~.nav-tabs .koolclash-nav-node>.koolclash-nav-tab,
        #koolclash-nav-firewall:checked~.nav-tabs .koolclash-nav-firewall>.koolclash-nav-tab,
        #koolclash-nav-additional:checked~.nav-tabs .koolclash-nav-additional>.koolclash-nav-tab,
        #koolclash-nav-log:checked~.nav-tabs .koolclash-nav-log>.koolclash-nav-tab,
        #koolclash-nav-debug:checked~.nav-tabs .koolclash-nav-debug>.koolclash-nav-tab {
            border-bottom: 2px solid #f36c21;
            background: transparent;
            z-index: 999;
            color: #777777;
        }

        .tab-content>* {
            display: none;
        }

        #koolclash-nav-overview:checked~.tab-content>#koolclash-content-overview,
        #koolclash-nav-config:checked~.tab-content>#koolclash-content-config,
        #koolclash-nav-node:checked~.tab-content>#koolclash-content-node,
        #koolclash-nav-firewall:checked~.tab-content>#koolclash-content-firewall,
        #koolclash-nav-additional:checked~.tab-content>#koolclash-content-additional,
        #koolclash-nav-log:checked~.tab-content>#koolclash-content-log,
        #koolclash-nav-debug:checked~.tab-content>#koolclash-content-debug {

            display: block;
        }

        #_koolclash_log {
            max-width: 100%;
            min-width: 100%;
            margin: 0;
            min-height: 300px;
            max-height: 500px;
            font-family: Consolas, "Panic Sans", "DejaVu Sans Mono", Monaco, "Bitstream Vera Sans Mono", 'Andale Mono', Menlo, monospace !important;
        }

        #_koolclash_debug_info {
            max-width: 100%;
            min-width: 100%;
            margin: 0;
            min-height: 600px;
            font-family: Consolas, "Panic Sans", "DejaVu Sans Mono", Monaco, "Bitstream Vera Sans Mono", 'Andale Mono', Menlo, monospace !important;
        }

        table.line-table tr:nth-child(even) {
            background: rgba(0, 0, 0, 0.04)
        }

        table.line-table tr:hover {
            background: #D7D7D7
        }

        table.line-table tr:hover .progress {
            background: #D7D7D7
        }

        /*#koolclash-acl-default-panel {
            margin-top: 16px;
        }*/

    </style>
    <script>
        var softcenter = 0;
    </script>

    <div class="box">
        <div class="heading">
            <a style="padding-left: 0; color: #0099FF; font-size: 20px;" href="https://koolclash.js.org" target="_blank">KoolClash - Clash for Koolshare OpenWrt/LEDE</a>
            <a href="#/soft-center.asp" class="btn" style="float: right; margin-right: 5px; border-radius:3px; margin-top: 0px;">??????</a>
            <br>
            <span id="koolclash-version-msg"></span>
            <!--<a href="https://github.com/koolshare/ledesoft/blob/master/v2ray/Changelog.txt" target="_blank"
                class="btn btn-primary" style="float:right;border-radius:3px;margin-right:5px;margin-top:0px;">????????????</a>-->
            <!--<button type="button" id="updateBtn" onclick="check_update()" class="btn btn-primary" style="float:right;border-radius:3px;margin-right:5px;margin-top:0px;">???????????? <i class="icon-upgrade"></i></button>-->
        </div>
        <div class="content">
            <div class="col" style="line-height: 30px;">
                <p style="margin-top: 4px">Clash ????????????????????????????????????????????? Shadowsocks???ShadowsocksR???Vmess ???Trajan????????????????????? Surge ??????????????????????????????</p>
                <p>KoolClash ??? Clash Premium?????? ??? <b style="color: red;">X86_64?????????Koolshare OpenWrt</b>  ??????????????????</p>

                <p style="margin-top: 12px">
                    <a href="https://github.com/Dreamacro/clash">Clash on GitHub</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                    <a href="https://koolclash.js.org" target="_blank">KoolClash ????????????</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                    <a href="https://github.com/SukkaW/Koolshare-Clash/releases" target="_blank">KoolClash ????????????</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                    <a href="https://github.com/SukkaW/Koolshare-Clash" target="_blank">KoolClash on GitHub(?????????:SukkaW)</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                    <a href="https://github.com/learnhard-cn/Koolshare-Clash-openwrt-amd64" target="_blank">KoolClash on GitHub(????????????)</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                    <a href="https://t.me/share_proxy_001" target="_blank">Telrgram?????????</a>
                </p>
            </div>
        </div>
    </div>

    <!-- Basic Elements used for tab -->
    <input class="koolclash-nav-radio" id="koolclash-nav-overview" type="radio" name="nav-tab" checked>
    <input class="koolclash-nav-radio" id="koolclash-nav-config" type="radio" name="nav-tab">
    <input class="koolclash-nav-radio" id="koolclash-nav-node" type="radio" name="nav-tab">
    <input class="koolclash-nav-radio" id="koolclash-nav-firewall" type="radio" name="nav-tab">
    <input class="koolclash-nav-radio" id="koolclash-nav-additional" type="radio" name="nav-tab">
    <input class="koolclash-nav-radio" id="koolclash-nav-log" type="radio" name="nav-tab">
    <input class="koolclash-nav-radio" id="koolclash-nav-debug" type="radio" name="nav-tab">

    <!-- Msg Elements -->
    <div id="msg_success" class="alert alert-success icon" style="display: none;"></div>
    <div id="msg_error" class="alert alert-error icon" style="display: none;"></div>
    <div id="msg_warning" class="alert alert-warning icon" style="display: none;"></div>

    <ul class="nav nav-tabs">
        <li>
            <label class="koolclash-nav-overview koolclash-nav-label" for="koolclash-nav-overview">
                <div class="koolclash-nav-tab">
                    <i class="icon-info"></i>
                    ????????????
                </div>
            </label>
        </li>
        <li>
            <label class="koolclash-nav-config koolclash-nav-label" for="koolclash-nav-config">
                <div class="koolclash-nav-tab">
                    <i class="icon-system"></i>
                    ????????????
                </div>
            </label>
        </li>
        <li>
            <label class="koolclash-nav-node koolclash-nav-label" for="koolclash-nav-node">
                <div class="koolclash-nav-tab">
                    <i class="icon-system"></i>
                    DIY????????????
                </div>
            </label>
        </li>
        <li>
            <label class="koolclash-nav-firewall koolclash-nav-label" for="koolclash-nav-firewall">
                <div class="koolclash-nav-tab">
                    <i class="icon-lock"></i>
                    ????????????
                </div>
            </label>
        </li>
        <li>
            <label class="koolclash-nav-additional koolclash-nav-label" for="koolclash-nav-additional">
                <div class="koolclash-nav-tab">
                    <i class="icon-wake"></i>
                    ????????????
                </div>
            </label>
        </li>
        <li>
            <label class="koolclash-nav-log koolclash-nav-label" for="koolclash-nav-log">
                <div class="koolclash-nav-tab">
                    <i class="icon-hourglass"></i>
                    ????????????
                </div>
            </label>
        </li>
        <li>
            <label class="koolclash-nav-debug koolclash-nav-label" for="koolclash-nav-debug">
                <div class="koolclash-nav-tab">
                    <i class="icon-warning"></i>
                    ????????????
                </div>
            </label>
        </li>
    </ul>
    <div class="tab-content">
        <div id="koolclash-content-overview">
            <div class="box">
                <div class="heading">KoolClash ??????</div>

                <div class="content">
                    <!-- ### KoolClash ???????????? ### -->
                    <div id="koolclash-field"></div>
                    <div class="koolclash-btn-container">
                        <button type="button" id="koolclash-btn-start-clash" onclick="KoolClash.restart()" class="btn btn-success">??????/?????? Clash</button>
                        <button type="button" id="koolclash-btn-stop-clash" onclick="KoolClash.stop()" class="btn btn-danger">?????? Clash</button>
                    </div>
                </div>
            </div>

            <div class="box">
                <div class="heading" style="padding-bottom: 4px">Clash ????????????</div>
                <div class="content">
                    <!-- ### KoolClash ?????? ### -->
                    <div id="koolclash-dashboard-info"></div>

                    <div class="koolclash-btn-container">
                        <a href="#" target="_blank" id="btn-open-clash-dashboard" class="btn btn-primary">?????? Clash ??????</a>
                        <button type="button" id="koolclash-btn-submit-control" onclick="KoolClash.submitExternalControl();" class="btn">????????????????????????</button>
                        <p style="margin-top: 8px">????????? Clash ???????????????????????????????????? Clash ??????</p>
                    </div>
                </div>
            </div>
        </div>
        <div id="koolclash-content-config">
            <div class="box">
                <div class="heading">KoolClash ????????????</div>

                <div class="content">
                    <!-- ### KoolClash ?????????????????? ### -->
                    <div id="koolclash-config"></div>
                    <div class="koolclash-btn-container">
                        <button type="button" id="koolclash-btn-update-sub" onclick="KoolClash.updateRemoteConfig();" class="btn">?????? Clash ????????????</button>
                        <button type="button" id="koolclash-btn-del-suburl" onclick="KoolClash.deleteSuburl();" class="btn btn-danger">???????????? URL????????? Clash ?????????</button>
                    </div>
                </div>
            </div>
            <div class="box">
                <div class="heading">????????? DNS ??????</div>
                <div class="content">
                    <!-- ### KoolClash DNS ?????? ### -->
                    <div id="koolclash-config-dns"></div>
                    <div class="koolclash-btn-container">
                        <button type="button" id="koolclash-btn-save-dns-config" onclick="KoolClash.submitDNSConfig();" class="btn btn-primary">?????? DNS ??????</button>
                    </div>
                </div>
            </div>
        </div>
        <div id="koolclash-content-node">
            <div class="box">
                <div class="heading">KoolClash??????DIY????????????</div>

                <div class="content">
                    <p>??????????????????: 1. <b style="color: red;">http(s)://</b>????????????????????? ??? ??????????????????,?????????<b style="color: red;">ss://,ssr://,vmess://</b>?????????????????????.(?????????TG??????!)</p>
                    <div id="koolclash-node"></div>
                    <div id="koolclash-node-msg"></div>
                </div>
            </div>
        </div>
        <div id="koolclash-content-firewall">
            <div class="box">
                <div class="heading" style="margin-top: -15px;"></div>
                <div class="content">
                    <div id="koolclash-firewall-ipset"></div>
                    <div class="koolclash-btn-container">
                        <button type="button" id="koolclash-btn-submit-white-ip" onclick="KoolClash.acl.submitWhiteIP();" class="btn btn-primary">??????</button>
                    </div>
                </div>
            </div>
        </div>
        <div id="koolclash-content-log">
            <div class="box">
                <div class="heading">KoolClash ????????????</div>
                <div class="content">
                    <textarea class="as-script" name="koolclash_log" id="_koolclash_log" readonly wrap="off" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false"></textarea>
                </div>
            </div>
        </div>
        <div id="koolclash-content-debug">
            <div class="box">
                <div class="heading">KoolClash ????????????</div>
                <div class="content">
                    <p>KoolClash ?????????????????????????????? KoolClash ???????????????????????????????????? KoolClash ?????????????????????????????????????????????????????????????????????????????????</p>

                    <button type="button" id="koolclash-btn-debug" onclick="KoolClash.debugInfo();" class="btn btn-danger" style="margin-top: 6px; margin-bottom: 12px">?????? KoolClash ????????????</button>

                    <textarea class="as-script" name="koolclash_debug_info" id="_koolclash_debug_info" readonly wrap="off" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false"></textarea>
                </div>
            </div>
        </div>
        <div id="koolclash-content-additional">
            <div class="box">
                <div class="heading">Clash ?????????</div>
                <div class="content">
                    <p>KoolClash ????????? Clash ???????????????????????? 20 ??????????????? Clash ??????????????????????????? Clash ???????????????????????????????????????</p>
                    <p style="color:red; margin-top: 8px">Clash ???????????????????????????????????????!???????????????????????????????????????</p>
                    <div id="koolclash-watchdog-panel" style="margin-top: 16px"></div>
                </div>
            </div>
            <div class="box">
                <div class="heading">GeoIP ?????????</div>
                <div class="content">
                    <p>Clash ????????? <a href="https://www.maxmind.com/" target="_blank">MaxMind</a> ????????? <a href="https://dev.maxmind.com/geoip/geoip2/geolite2/" target="_blank">GeoLite2</a> IP ??????????????? GeoIP ??????</p>
                    <div id="koolclash-ipdb-panel" style="margin-top: 8px"></div>
                </div>
            </div>
        </div>
    </div>

    <script>
        
        var Msg = {
            show: (type, text) => {
                E(`msg_${type}`).innerHTML = text;
                $(`#msg_${type}`).show();
            },
            hide: (type) => {
                $(`#msg_${type}`).hide();
                E(`msg_${type}`).innerHTML = '';
            }
        };

        var KoolClash = {
            // KoolClash.renderUI()
            // ?????? KoolClash ??????
            renderUI: () => {
                var inputWidth = `min-width: 220px; max-width: 220px`;
                $('#koolclash-field').forms([
                    {
                        title: '<b>Clash ????????????</b>',
                        text: '<span id="koolclash_status" name="koolclash_status" color="#1bbf35">???????????? Clash ????????????...</span>'
                    },
                    {
                        title: '<b>Clash ?????????????????????</b>',
                        text: '<span id="koolclash_watchdog_status" name="koolclash_watchdog_status" color="#1bbf35">???????????? Clash ?????????????????????...</span>'
                    },
                ]);
                $('#koolclash-dashboard-info').forms([
                    {
                        title: '<b>Host</b>',
                        name: 'koolclash_dashboard_host',
                        type: 'text',
                        value: ''
                    },
                    {
                        title: '<b>??????</b>',
                        text: '6170'
                    },
                    {
                        title: '<b>??????</b>',
                        text: window.dbus.koolclash_api_secret || 'Clash ?????????????????? secret'
                    },
                ]);
                $('#koolclash-config').forms([
                    {
                        title: '<b>Clash ????????????</b>',
                        suffix: '<input type="file" id="koolclash-file-config" size="50"><button id="koolclash-btn-upload" type="button" onclick="KoolClash.submitClashConfig();" class="btn btn-primary">??????????????????</button>'
                    },
                    {
                        title: '<b>Clash ???????????? URL</b><br><small>??????????????????????????????????????????</small>',
                        name: 'koolclash_config_suburl',
                        type: 'text',
                        value: window.dbus.koolclash_suburl || '',
                        placeholder: 'https://api.example.com/clash'
                    },
                ]);
                $('#koolclash-node').forms([
                    {
                        title: '<b>????????????URI??????</b>',
                        name: 'koolclash_node_uri',
                        type: 'text',
                        style: 'width: 60%; height: 30px;',
                        placeholder: 'ss://xxxxxxxx',
                        suffix: '<button id="koolclash-btn-addnode" type="button" onclick="KoolClash.submitClashAddNode();" class="btn btn-primary">??????DIY??????</button>'
                    },
                    {
                        title: '???????????????DIY????????????',
                        name: 'koolclash-select-nodelist',
                        type: 'select',
                        options: [ ],
                        suffix: '<button type="button" id="koolclash-btn-submit-nodelist" onclick="KoolClash.submitClashDeleteNode();" class="btn btn-primary">????????????</button>&nbsp;&nbsp;<button type="button" id="koolclash-btn-submit-delete-all" onclick="KoolClash.submitClashDeleteAll();" class="btn btn-primary">??????????????????</button>',
                    },
                ]);
                $('#koolclash-config-dns').forms([
                    {
                        title: '<b>DNS ????????????</b>',
                        name: 'koolclash-dns-config-switch',
                        type: 'checkbox'
                    },
                    {
                        title: '&nbsp;',
                        text: '<p id="koolclash-dns-msg" style="margin-top: 10px; margin-bottom: 6px"></p>'
                    },
                    {
                        title: '',
                        name: 'koolclash-config-dns',
                        type: 'textarea',
                        value: '????????????????????? Clash DNS Config ??????...',
                        style: 'width: 100%; height: 200px;'
                    },
                ]);
                $('#koolclash-firewall-ipset').forms([
                    {
                        title: '<b>IP/CIDR ?????????</b><br><br><p style="color: #999">????????? Clash ??? IP/CIDR ???????????????????????????????????????<br>119.29.29.29<br>210.2.4.0/24</p>',
                        name: 'koolclash_firewall_white_ipset',
                        type: 'textarea',
                        value: Base64.decode(window.dbus.koolclash_firewall_whiteip_base64 || '') || '',
                        style: 'width: 80%; height: 150px;'
                    },
                ]);

                $('#koolclash-watchdog-panel').forms([
                    {
                        title: 'Clash ???????????????',
                        name: 'koolclash-select-watchdog',
                        type: 'select',
                        options: [
                            ['0', '??????'],
                            ['1', '??????']
                        ],
                        suffix: '<button type="button" id="koolclash-btn-submit-watchdog" onclick="KoolClash.submitWatchdog();" class="btn btn-primary">??????</button>',
                        value: window.dbus.koolclash_watchdog_enable || '0',
                    },
                ]);
                $('#koolclash-ipdb-panel').forms([
                    {
                        title: '<b>?????? IP ???????????????</b>',
                        name: 'koolclash-ipdb-version',
                        text: `${window.dbus.koolclash_ipdb_version || '???????????????????????????'}<button type="button" id="koolclash-btn-update-ipdb" onclick="KoolClash.updateIPDB()" class="btn btn-success" style="margin-left: 16px; margin-top: -6px; ">?????? IP ?????????</button>`,
                    },
                ]);

                /*if (E('_koolclash-acl-default-port').value === '0') {
                    $('#_koolclash-acl-default-port-user').show();
                } else {
                    $('#_koolclash-acl-default-port-user').hide();
                }*/

                $('.koolclash-nav-log').on('click', KoolClash.getLog);
            },
            // ?????? Tab
            // ?????????????????????????????? input ??? ID
            selectTab: (inputId) => {
                for (let i of document.getElementsByClassName('koolclash-nav-radio')) {
                    i.removeAttribute('checked');
                }
                E(inputId).click();
            },
            checkUpdate: () => {
                let installed = '',
                    remote = '';
                // ?????????????????????
                $.ajax({
                    type: "GET",
                    cache: false,
                    url: "/res/koolclash_.version",
                    success: (resp) => {
                        installed = resp;
                        E('koolclash-version-msg').innerHTML = `??????????????????&nbsp;:&nbsp;${installed}`;
                        // ?????????????????????
                        $.ajax({
                            type: "GET",
                            cache: false,
                            url: "https://koolclash.js.org/koolclash_version",
                            success: (resp) => {
                                remote = resp;
                                E('koolclash-version-msg').innerHTML = `??????????????????&nbsp;:&nbsp;${installed}&nbsp;&nbsp;/&nbsp;&nbsp;??????????????????&nbsp;:&nbsp;${remote}`;

                                if (installed !== remote) {
                                    E('koolclash-version-msg').innerHTML = `??????????????????&nbsp;:&nbsp;${installed}&nbsp;&nbsp;|&nbsp;&nbsp;??????????????????&nbsp;:&nbsp;${remote}<br>???????????????????????????????????????????????????????????????????????????????????? KoolClash ?????????????????????????????? <a href="https://github.com/SukkaW/Koolshare-Clash/releases" target="_blank" style="padding: 0; color: navy">GitHub Release</a> ??????????????????`;
                                }
                            }
                        });
                    },
                    error: () => {
                        E('koolclash-version-msg').innerHTML = `?????????????????????`
                    }
                });


                E('koolclash-version-msg').innerHTML = `??????????????????&nbsp;:&nbsp;<span id="koolclash-version-installed"></span>&nbsp;&nbsp;|&nbsp;&nbsp;??????????????????&nbsp;:&nbsp;<span id="koolclash-version-remote"></span>`;
            },
            defaultDNSConfig: `# ????????????????????? Clash ????????? DNS ????????????????????????????????????
dns:
  enable: true
  ipv6: false
  listen: 0.0.0.0:53
  enhanced-mode: fake-ip
  nameserver:
    - 119.28.28.28
    - 119.29.29.29
    - 223.5.5.5
    - tls://dns.rubyfish.cn:853
  fallback:
    - tls://1.0.0.1:853
    - tls://8.8.4.4:853
`,
            // getClashStatus
            // ?????? Clash ?????? PID
            getClashStatus: () => {
                let id = parseInt(Math.random() * 100000000),
                    postData = JSON.stringify({
                        id,
                        "method": "koolclash_main.sh",
                        "params": ["koolclash_status"],
                        "fields": ""
                    });

                $.ajax({
                    type: "POST",
                    cache: false,
                    url: "/_api/",
                    data: postData,
                    dataType: "json",
                    success: (resp) => {
                        if (softcenter === 1) {
                            return false;
                        }

                        let data = resp.result.split('@'),
                            pid_text = data[0],
                            pid_watchdog_text = data[1],
                            dnsmode = data[2],
                            control_data = data[3],
                            secret = data[4],
                            fallbackdns = data[6];

                        if (fallbackdns === '') {
                            E('_koolclash-config-dns').innerHTML = KoolClash.defaultDNSConfig;
                        } else {
                            E('_koolclash-config-dns').innerHTML = Base64.decode(fallbackdns || '') || KoolClash.defaultDNSConfig;
                        }

                        let control_host = control_data.split(':')[0],
                            control_port = control_data.split(':')[1];

                        control_host = (control_host.length === 0) ? `???????????? Clash ???????????????` : control_host;
                        E('koolclash_status').innerHTML = pid_text;
                        E('koolclash_watchdog_status').innerHTML = pid_watchdog_text;
                        E('_koolclash_dashboard_host').value = control_host;
                        E('btn-open-clash-dashboard').href = `http://${control_host}:6170/ui/`

                        /*
                         * 0 ???????????? config.yaml
                         * 1 origin.yml DNS ????????????
                         * 2 origin.yml DNS ???????????? ??????????????????????????? DNS
                         * 3 origin.yml DNS ??????????????????????????? dns.yml
                         * (4) origin.yml DNS ???????????????????????? dns.yml
                         */
                        if (dnsmode === '0') {
                            E('_koolclash-dns-config-switch').checked = false;
                            E('_koolclash-dns-config-switch').setAttribute('disabled', '');
                            $('#koolclash-btn-save-dns-config').hide();
                            $('#_koolclash-config-dns').hide();
                            E('koolclash-dns-msg').innerHTML = `???????????? Clash ???????????????`
                        } else if (dnsmode === '1') {
                            E('_koolclash-dns-config-switch').checked = false;
                            $('#koolclash-btn-save-dns-config').hide();
                            $('#_koolclash-config-dns').hide();
                            E('koolclash-dns-msg').innerHTML = `Clash ????????????????????? DNS ?????????????????????????????? Clash ?????????????????? DNS ?????????????????????????????????`
                        } else if (dnsmode === '2') {
                            E('_koolclash-dns-config-switch').checked = true;
                            $('#koolclash-btn-save-dns-config').show();
                            $('#_koolclash-config-dns').show();
                            E('koolclash-dns-msg').innerHTML = `????????????????????? DNS ???????????? Clash ?????????????????? DNS ??????`
                        } else if (dnsmode === '3') {
                            E('_koolclash-dns-config-switch').checked = true;
                            E('_koolclash-dns-config-switch').setAttribute('disabled', '');
                            $('#koolclash-btn-save-dns-config').show();
                            $('#_koolclash-config-dns').show();
                            E('koolclash-dns-msg').innerHTML = `Clash ???????????????????????????????????????????????? DNS ????????????????????????????????????????????? DNS ?????????`
                        } else {
                            E('_koolclash-dns-config-switch').checked = true;
                            E('_koolclash-dns-config-switch').setAttribute('disabled', '');
                            $('#koolclash-btn-save-dns-config').show();
                            $('#_koolclash-config-dns').show();
                            E('koolclash-dns-msg').innerHTML = `Clash ?????????????????????????????????????????????????????? DNS ???????????????????????????????????????????????? DNS ??????`
                        }
                    },
                    error: () => {
                        if (softcenter === 1) {
                            return false;
                        }
                        E('koolclash_status').innerHTML = `<span style="color: red">?????? Clash ????????????????????????????????????????????????`;
                        E('koolclash_watchdog_status').innerHTML = `<span style="color: red">?????? Clash ?????????????????????????????????????????????????????????`;
                    }
                });
            },
            
            disableAllButton: () => {
                let btnList = document.getElementsByTagName('button');
                for (let i of btnList) {
                    i.setAttribute('disabled', '');
                }
            },
            enableAllButton: () => {
                let btnList = document.getElementsByTagName('button');
                for (let i of btnList) {
                    i.removeAttribute('disabled');
                }
            },
            submitExternalControl: () => {
                KoolClash.disableAllButton();

                let id = parseInt(Math.random() * 100000000);
                let postData = JSON.stringify({
                    id,
                    "method": "koolclash_main.sh",
                    "params": [ "change_external_controller_ip", `${E('_koolclash_dashboard_host').value}`],
                    "fields": ""
                });

                $.ajax({
                    type: "POST",
                    cache: false,
                    url: "/_api/",
                    data: postData,
                    dataType: "json",
                    success: (resp) => {
                        E('koolclash-btn-submit-control').innerHTML = '???????????? IP ????????????(????????????Clash??????????????????)??????????????????????????????';
                        setTimeout(() => {
                            window.location.reload();
                        }, 3000)
                    },
                    error: () => {
                        E('koolclash-btn-submit-control').innerHTML = '???????????? IP ???????????????';
                        setTimeout(() => {
                            KoolClash.enableAllButton();
                            E('koolclash-btn-submit-control').innerHTML = '????????????????????????';
                        }, 3000)
                    }
                });
            },
            submitClashConfig: () => {
                KoolClash.disableAllButton();
                E('koolclash-btn-upload').innerHTML = '???????????? Clash ??????...';

                let formData = new FormData();
                formData.append('clash.config.yaml', $('#koolclash-file-config')[0].files[0]);
                $.ajax({
                    url: '/_upload',
                    type: 'POST',
                    async: true,
                    cache: false,
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: (resp) => {
                        E('koolclash-btn-upload').innerHTML = '???????????? Clash ??????...';
                        (() => {
                            let id = parseInt(Math.random() * 100000000),
                                postData = JSON.stringify({
                                    id,
                                    "method": "koolclash_main.sh",
                                    "params": ["upload_config_file"],
                                    "fields": ""
                                });

                            $.ajax({
                                type: "POST",
                                cache: false,
                                url: "/_api/",
                                data: postData,
                                dataType: "json",
                                success: (resp) => {
                                    if (resp.result === 'notfound') {
                                        E('koolclash-btn-upload').innerHTML = '????????????????????????????????????????????????';
                                        setTimeout(() => {
                                            KoolClash.enableAllButton();
                                            E('koolclash-btn-upload').innerHTML = '??????????????????';
                                        }, 3000)
                                    } else if (resp.result === 'nofallbackdns') {
                                        E('koolclash-btn-upload').innerHTML = '?????????????????????????????? DNS ??????????????????????????? DNS ?????????';
                                        // KoolClash.selectTab('koolclash-nav-config')
                                        E('koolclash-btn-upload').classList.remove('btn-primary');
                                        E('koolclash-btn-upload').classList.add('btn-danger');
                                        E('koolclash-btn-save-dns-config').removeAttribute('disabled');
                                        E('_koolclash-dns-config-switch').checked = true;
                                        E('_koolclash-dns-config-switch').setAttribute('disabled', '');
                                        $('#_koolclash-config-dns').show();
                                        $('#koolclash-btn-save-dns-config').show();
                                        E('koolclash-dns-msg').innerHTML = `Clash ???????????????????????????????????????????????? DNS ????????????????????????????????????????????? DNS ??????`;
                                    } else if (resp.result === 'ok' ) {
                                        E('koolclash-btn-upload').innerHTML = 'Clash ??????????????????????????????????????????<span id="koolclash-wait-time"></span>';
                                        KoolClash.tminus(5);
                                        setTimeout(() => {
                                            window.location.reload();
                                        }, 5000)
                                    } else  {
                                        E('koolclash-btn-upload').innerHTML = '?????????????????????????????????????????????:' + resp.result;
                                        setTimeout(() => {
                                            KoolClash.enableAllButton();
                                            E('koolclash-btn-upload').innerHTML = '??????????????????';
                                        }, 3000)
                                    }
                                },
                                error: () => {
                                    E('koolclash-btn-upload').innerHTML = '???????????????????????????';

                                    setTimeout(() => {
                                        KoolClash.enableAllButton();
                                        E('koolclash-btn-upload').innerHTML = '??????????????????';
                                    }, 3000)
                                }
                            });
                        })();
                    },
                    error: () => {
                        if (softcenter === 1) {
                            return false;
                        }
                        E('koolclash-btn-save-config').innerHTML = '????????????????????????????????????';

                        setTimeout(() => {
                            KoolClash.enableAllButton();
                            E('koolclash-btn-upload').innerHTML = '??????????????????';
                        }, 4000)
                    }
                });
            },
            tminus: (second) => {
                setInterval(() => {
                    second--;
                    E('koolclash-wait-time').innerHTML = `???${second}???`;
                }, 1000);
            },
            submitDNSConfig: () => {
                KoolClash.disableAllButton();
                E('koolclash-btn-save-dns-config').innerHTML = '????????????...';
                let id = parseInt(Math.random() * 100000000),
                    postData,
                    checked;

                if (E('_koolclash-dns-config-switch').checked) {
                    checked = '1';
                } else {
                    checked = '0'
                }

                postData = JSON.stringify({
                    id,
                    "method": "koolclash_save_dns_config.sh",
                    "params": [`${Base64.encode(E('_koolclash-config-dns').value.replace('# ????????????????????? Clash ????????? DNS ????????????????????????????????????\n', ''))}`, checked],
                    "fields": ""
                });

                $.ajax({
                    type: "POST",
                    cache: false,
                    url: "/_api/",
                    data: postData,
                    dataType: "json",
                    success: (resp) => {
                        if (resp.result === 'nofallbackdns') {
                            E('koolclash-btn-save-dns-config').innerHTML = '?????????????????? DNS ?????????';
                            setTimeout(() => {
                                KoolClash.enableAllButton();
                                E('koolclash-btn-save-dns-config').innerHTML = '?????? Clash ????????? DNS ??????';
                            }, 4000)
                        } else {
                            E('koolclash-btn-save-dns-config').innerHTML = '??????????????????????????????????????????<span id="koolclash-wait-time"></span>';
                            KoolClash.tminus(5);
                            setTimeout(() => {
                                window.location.reload();
                            }, 5000)
                        }
                    },
                    error: () => {
                        E('koolclash-btn-save-dns-config').innerHTML = '????????????????????????';
                        setTimeout(() => {
                            KoolClash.enableAllButton();
                            E('koolclash-btn-save-dns-config').innerHTML = '?????? Clash ????????? DNS ??????';
                        }, 4000)
                    }
                });
            },
            submitClashAddNode: () => {
                KoolClash.disableAllButton();
                // E('koolclash-btn-addnode').innerHTML = '????????????...';
                let id = parseInt(Math.random() * 100000000),
                    postData,
                    checked;

                postData = JSON.stringify({
                    id,
                    "method": "koolclash_main.sh",
                    "params": [ "node_add", `${Base64.encode(E('_koolclash_node_uri').value.replace('\n', ''))}`],
                    "fields": ""
                });

                $.ajax({
                    type: "POST",
                    cache: false,
                    url: "/_api/",
                    data: postData,
                    dataType: "json",
                    success: (resp) => {
                        if (resp.result === 'err') {
                            setTimeout(() => {
                                KoolClash.enableAllButton();
                                E('koolclash-node-msg').innerHTML = '?????? Clash ????????? DNS ??????';
                            }, 4000)
                        } else {
                            E('koolclash-node-msg').innerHTML = '??????????????????????????????????????????<span id="koolclash-wait-time"></span>';
                            KoolClash.tminus(5);
                            setTimeout(() => {
                                window.location.reload();
                            }, 5000)
                        }
                    },
                    error: () => {
                        E('koolclash-node-msg').innerHTML = '????????????????????????';
                        setTimeout(() => {
                            KoolClash.enableAllButton();
                        }, 4000)
                    }
                });
            },
            submitClashDeleteNode: () => {
                KoolClash.disableAllButton();
                E('koolclash-node-msg').innerHTML = '????????????...';
                let id = parseInt(Math.random() * 100000000),
                    postData,
                    checked;

                postData = JSON.stringify({
                    id,
                    "method": "koolclash_main.sh",
                    "params": [ "node_delete_one", `${Base64.encode(E('_koolclash-select-nodelist').value)}`],
                    "fields": ""
                });

                $.ajax({
                    type: "POST",
                    cache: false,
                    url: "/_api/",
                    data: postData,
                    dataType: "json",
                    success: (resp) => {
                        if (resp.result === 'err') {
                            setTimeout(() => {
                                KoolClash.enableAllButton();
                                E('koolclash-node-msg').innerHTML = '??????DIY??????????????????!';
                            }, 4000)
                        } else {
                            E('koolclash-node-msg').innerHTML = '????????????????????????????????????????????????<span id="koolclash-wait-time"></span>';
                            KoolClash.tminus(5);
                            setTimeout(() => {
                                window.location.reload();
                            }, 5000)
                        }
                    },
                    error: () => {
                        E('koolclash-node-msg').innerHTML = '????????????????????????';
                        setTimeout(() => {
                            KoolClash.enableAllButton();
                        }, 4000)
                    }
                });
            },
            submitClashDeleteAll: () => {
                KoolClash.disableAllButton();
                E('koolclash-node-msg').innerHTML = '????????????...';
                let id = parseInt(Math.random() * 100000000),
                    postData,
                    checked;

                postData = JSON.stringify({
                    id,
                    "method": "koolclash_main.sh",
                    "params": [ "node_delete_all" ],
                    "fields": ""
                });

                $.ajax({
                    type: "POST",
                    cache: false,
                    url: "/_api/",
                    data: postData,
                    dataType: "json",
                    success: (resp) => {
                        if (resp.result === 'err') {
                            setTimeout(() => {
                                KoolClash.enableAllButton();
                                E('koolclash-node-msg').innerHTML = '??????DIY??????????????????!';
                            }, 4000)
                        } else {
                            E('koolclash-node-msg').innerHTML = '????????????????????????????????????????????????<span id="koolclash-wait-time"></span>';
                            KoolClash.tminus(5);
                            setTimeout(() => {
                                window.location.reload();
                            }, 5000)
                        }
                    },
                    error: () => {
                        E('koolclash-node-msg').innerHTML = '????????????????????????';
                        setTimeout(() => {
                            KoolClash.enableAllButton();
                        }, 4000)
                    }
                });
            },
            restart: () => {
                KoolClash.disableAllButton();
                Msg.show('warning', '???????????? Clash????????????????????????????????????');

                setTimeout(() => {
                    KoolClash.selectTab('koolclash-nav-log');
                    KoolClash.getLog();
                }, 100);

                let id = parseInt(Math.random() * 100000000),
                    postData = JSON.stringify({
                        id,
                        "method": "koolclash_control.sh",
                        "params": ['start'],
                        "fields": ""
                    });

                $.ajax({
                    type: "POST",
                    cache: false,
                    async: true,
                    url: "/_api/",
                    data: postData,
                    dataType: "json",
                    success: (resp) => {
                        if (resp.result === 'nofile') {
                            Msg.hide('warning');
                            Msg.show('error', '?????????????????????Clash ???????????????');
                            Msg.show('warning', '??????????????????????????????????????????????????????????????????<span id="koolclash-wait-time"></span>');
                            setTimeout(() => {
                                window.location.reload();
                            }, 5000)
                        } else if (resp.result === 'nodns') {
                            Msg.hide('warning');
                            Msg.show('error', '??? Clash ???????????????????????????????????? DNS ?????????');
                            Msg.show('warning', '??????????????????????????????????????????????????????????????????<span id="koolclash-wait-time"></span>');
                            KoolClash.tminus(5);
                            setTimeout(() => {
                                window.location.reload();
                            }, 5000)
                        } else {
                            Msg.hide('warning');
                            Msg.show('success', 'Clash ???????????????');
                            Msg.show('warning', '??????????????????????????????????????????????????????????????????<span id="koolclash-wait-time"></span>');
                            KoolClash.tminus(5);
                            setTimeout(() => {
                                window.location.reload();
                            }, 5000)
                        }
                    },
                    error: () => {
                        Msg.show('error', 'Clash (??????)??????????????????????????????????????????????????? Clash ???????????????');
                        Msg.show('warning', '??????????????????????????????????????????????????????????????????<span id="koolclash-wait-time"></span>');
                        KoolClash.selectTab('koolclash-nav-log');
                        KoolClash.tminus(5);
                        setTimeout(() => {
                            window.location.reload();
                        }, 5000)
                    }
                });
            },
            stop: () => {
                KoolClash.disableAllButton();
                Msg.show('warning', '???????????? Clash????????????????????????????????????');

                setTimeout(() => {
                    KoolClash.selectTab('koolclash-nav-log');
                    KoolClash.getLog();
                }, 100);

                let id = parseInt(Math.random() * 100000000),
                    postData = JSON.stringify({
                        id,
                        "method": "koolclash_control.sh",
                        "params": ['stop'],
                        "fields": ""
                    });

                $.ajax({
                    type: "POST",
                    cache: false,
                    async: true,
                    url: "/_api/",
                    data: postData,
                    dataType: "json",
                    success: (resp) => {
                        Msg.hide('warning');
                        Msg.show('success', 'Clash ???????????????');
                        Msg.show('warning', '??????????????????????????????????????????????????????????????????<span id="koolclash-wait-time"></span>');
                        KoolClash.tminus(5);
                        setTimeout(() => {
                            window.location.reload();
                        }, 5000)
                    },
                    error: () => {
                        Msg.hide('warning');
                        Msg.show('error', 'Clash (??????)??????????????????????????????????????????????????? Clash ???????????????');
                        Msg.show('warning', '??????????????????????????????????????????????????????????????????<span id="koolclash-wait-time"></span>');
                        KoolClash.tminus(5);
                        setTimeout(() => {
                            window.location.reload();
                        }, 5000)
                    }
                });
            },
            deleteSuburl: () => {
                KoolClash.disableAllButton();
                E('koolclash-btn-del-suburl').innerHTML = `???????????? Clash ???????????? URL`;
                let id = parseInt(Math.random() * 100000000),
                    postData = JSON.stringify({
                        id,
                        "method": "koolclash_main.sh",
                        "params": ['sub_delete'],
                        "fields": ""
                    });

                $.ajax({
                    type: "POST",
                    cache: false,
                    url: "/_api/",
                    data: postData,
                    dataType: "json",
                    success: (resp) => {
                        E('koolclash-btn-del-suburl').innerHTML = `???????????????`;
                        E('_koolclash_config_suburl').value = '';

                        setTimeout(() => {
                            KoolClash.enableAllButton();
                            E('koolclash-btn-del-suburl').innerHTML = '???????????? URL????????? Clash ?????????';
                        }, 2500)
                    },
                    error: () => {
                        E('koolclash-btn-del-suburl').innerHTML = `???????????????`;

                        setTimeout(() => {
                            KoolClash.enableAllButton();
                            E('koolclash-btn-del-suburl').innerHTML = '???????????? URL????????? Clash ?????????';
                        }, 2500)
                    }
                });
            },
            updateRemoteConfig: () => {
                KoolClash.disableAllButton();
                E('koolclash-btn-update-sub').innerHTML = `??????????????????????????????`;
                let id = parseInt(Math.random() * 100000000),
                    postData = JSON.stringify({
                        id,
                        "method": "koolclash_main.sh",
                        "params": ['sub_update', `${Base64.encode(E('_koolclash_config_suburl').value)}`],
                        "fields": ""
                    });

                $.ajax({
                    type: "POST",
                    cache: false,
                    url: "/_api/",
                    data: postData,
                    dataType: "json",
                    success: (resp) => {
                        if (resp.result === 'nocurl') {
                            E('koolclash-btn-update-sub').innerHTML = `???????????????????????? curl??????????????????`;
                            setTimeout(() => {
                                KoolClash.enableAllButton();
                                E('koolclash-btn-update-sub').innerHTML = '?????? Clash ????????????';
                            }, 3500)
                        } else if (resp.result === 'fail') {
                            E('koolclash-btn-update-sub').innerHTML = `Clash ?????????????????????????????????????????????????????????????????????`;
                            setTimeout(() => {
                                KoolClash.enableAllButton();
                                E('koolclash-btn-update-sub').innerHTML = '?????? Clash ????????????';
                            }, 4000)
                        } else if (resp.result === 'nofallbackdns') {
                            E('koolclash-btn-update-sub').innerHTML = '?????????????????????????????? DNS ??????????????????????????? DNS ?????????';
                            E('_koolclash-dns-config-switch').checked = true;
                            E('_koolclash-dns-config-switch').setAttribute('disabled', '');
                            $('#_koolclash-config-dns').show();
                            $('#koolclash-btn-save-dns-config').show();
                            E('koolclash-btn-save-dns-config').removeAttribute('disabled');
                            E('koolclash-dns-msg').innerHTML = `Clash ???????????????????????????????????????????????????????????? DNS ????????????????????????????????????????????? DNS ??????`;
                        } else {
                            E('koolclash-btn-update-sub').innerHTML = 'Clash ??????????????????????????????????????????<span id="koolclash-wait-time"></span>';
                            KoolClash.tminus(5);
                            setTimeout(() => {
                                window.location.reload();
                            }, 5000)
                        }
                    },
                    error: () => {
                        E('koolclash-btn-update-sub').innerHTML = `Clash ???????????????????????????`;

                        setTimeout(() => {
                            KoolClash.enableAllButton();
                            E('koolclash-btn-update-sub').innerHTML = '?????? Clash ????????????';
                        }, 2500)
                    }
                });
            },
            updateIPDB: () => {
                KoolClash.disableAllButton();
                E('koolclash-btn-update-ipdb').innerHTML = `?????????????????? IP ??????????????????`;
                let id = parseInt(Math.random() * 100000000),
                    postData = JSON.stringify({
                        "id": id,
                        "method": "koolclash_main.sh",
                        "params": ["koolclash_update_mmdb"],
                        "fields": ""
                    });

                setTimeout(() => {
                    KoolClash.selectTab('koolclash-nav-log');
                    KoolClash.getLog();
                }, 100);

                $.ajax({
                    type: "POST",
                    cache: false,
                    url: "/_api/",
                    data: postData,
                    dataType: "json",
                    success: (resp) => {
                        if (resp.result === 'nodl') {
                            E('koolclash-btn-update-ipdb').innerHTML = `??????????????????????????? curl ????????? wget????????????????????????`;
                            setTimeout(() => {
                                KoolClash.enableAllButton();
                                E('koolclash-btn-update-ipdb').innerHTML = '?????? IP ?????????';
                            }, 5500)
                        } else {
                            E('koolclash-btn-update-ipdb').innerHTML = `IP ?????????????????????????????????????????????<span id="koolclash-wait-time"></span>`;
                            KoolClash.tminus(3);
                            setTimeout(() => {
                                window.location.reload();
                            }, 3000)
                        }
                    },
                    error: () => {
                        E('koolclash-btn-update-ipdb').innerHTML = `IP ????????????????????????`;
                        setTimeout(() => {
                            KoolClash.enableAllButton();
                            E('koolclash-btn-update-ipdb').innerHTML = '?????? IP ?????????';
                        }, 3000)
                    }
                });
            },
            getLog: () => {
                if (typeof _responseLen === undefined) {
                    let _responseLen = 0;
                } else {
                    _responseLen = 0;
                }

                let noChange = 0;

                $.ajax({
                    url: '/_temp/koolclash_log.txt',
                    type: 'GET',
                    cache: false,
                    dataType: 'text',
                    success: (response) => {
                        var retArea = E("_koolclash_log");
                        if (response.search("XU6J03M6") !== -1) {
                            retArea.value = response.replace("XU6J03M6", " ");
                            retArea.scrollTop = retArea.scrollHeight;
                            return true;
                        }
                        if (_responseLen === response.length) {
                            noChange++;
                        } else {
                            noChange = 0;
                        }
                        if (noChange > 8000) {
                            KoolClash.selectTab('koolclash-nav-overview');
                            return false;
                        } else {
                            setTimeout(() => {
                                KoolClash.getLog();
                            }, 100);
                        }
                        retArea.value = response.replace("XU6J03M6", " ");
                        retArea.scrollTop = retArea.scrollHeight;
                        _responseLen = response.length;
                    },
                    error: () => {
                        E("_koolclash_log").value = "?????????????????????";
                        return false;
                    }
                });
            },
            debugInfo: () => {
                let id = parseInt(Math.random() * 100000000),
                    postData = JSON.stringify({
                        id,
                        "method": "koolclash_main.sh",
                        "params": ["koolclash_debug_info"],
                        "fields": ""
                    });

                fetch(`/_api/`, {
                    body: postData,
                    method: 'POST',
                    cache: 'no-cache',
                }).then((resp) => Promise.all([resp.ok, resp.status, resp.json(), resp.headers]))
                    .then(([ok, status, data, headers]) => {
                        if (ok) {
                            return JSON.parse(data.result);
                        } else {
                            throw new Error(JSON.stringify(json.error));
                        }
                    })
                    .then((data) => {
                        let getBrowser = () => {
                            let ua = navigator.userAgent,
                                tem,
                                M = ua.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))\/?\s*(\d+)/i) || [];
                            if (ua.match("MicroMessenger"))
                                return "Weixin";

                            if (/trident/i.test(M[1])) {
                                tem = /\brv[ :]+(\d+)/g.exec(ua) || [];
                                return 'IE ' + (tem[1] || '');
                            }
                            if (M[1] === 'Chrome') {
                                tem = ua.match(/\b(OPR|Edge)\/(\d+)/);
                                if (tem != null) return tem.slice(1).join(' ').replace('OPR', 'Opera');
                            }
                            M = M[2] ? [M[1], M[2]] : [navigator.appName, navigator.appVersion, '-?'];
                            if ((tem = ua.match(/version\/(\d+)/i)) != null) M.splice(1, 1, tem[1]);
                            return M.join(' ');
                        };

                        E('_koolclash_debug_info').value = `
======================== KoolClash ???????????? ========================
????????????????????? ${new Date().toString()}
??????????????????${getBrowser()}
-------------------- Koolshare OpenWrt ???????????? --------------------
???????????????${data.koolshare_version}
????????? LAN IP???${data.lan_ip}
------------------------ KoolClash ???????????? ------------------------
KoolClash ?????????${window.dbus.koolclash_version}
Clash ???????????????${data.clash_version}
KoolClash ???????????????${(window.dbus.koolclash_enable === '1') ? `Clash ??????????????????` : `Clash ??????????????????`}
???????????? Clash ???????????? Host???${(window.dbus.koolclash_api_host) ? window.dbus.koolclash_api_host : `?????????`}
-------------------------- Clash ???????????? --------------------------
${Base64.decode(data.clash_process)}
------------------------ Clash ?????????????????? ------------------------
${Base64.decode(data.clash_config_dir)}
------------------------ Clash ?????????????????? ------------------------
Clash ?????????????????????${data.clash_redir}
Clash ??????????????????????????????${data.clash_allow_lan}
Clash ???????????????????????????${data.clash_ext_controller}
--------------------- Clash ???????????? DNS ?????? ----------------------
Clash DNS ???????????????${data.clash_dns_enable}
Clash DNS ?????? IPv6???${(data.clash_dns_ipv6 === 'null') ? `false` : data.clash_dns_ipv6}
Clash DNS ???????????????${data.clash_dns_mode}
Clash DNS ?????????${data.clash_dns_listen}
KoolClash ?????? DNS ?????????${dbus.koolclash_dnsmode}
-------------------- KoolClash ????????? DNS ?????? ---------------------
${Base64.decode(data.fallbackdns)}
------------------------- iptables ?????? ---------------------------
 * iptables mangle ??? Clash ????????????
${Base64.decode(Base64.decode(data.iptables_mangle))}

 * iptables nat ??? Clash ????????????
${Base64.decode(Base64.decode(data.iptables_nat))}

 * iptables mangle ??? koolclash ???
${Base64.decode(Base64.decode(data.iptables_mangle_clash))}

 * iptables nat ??? koolclash ???
${Base64.decode(Base64.decode(data.iptables_nat_clash))}

* iptables mangle ??? koolclash_dns ???
${Base64.decode(Base64.decode(data.iptables_mangle_clash_dns))}

 * iptables nat ??? koolclash_dns ???
${Base64.decode(Base64.decode(data.iptables_nat_clash_dns))}

 * iptables nat ??? 53 ??????????????????
${Base64.decode(data.chromecast_nu)}
---------------------- ipset ????????? IP ?????? ------------------------
${Base64.decode(data.firewall_white_ip)}
===================================================================
`;
                    })
            },
            acl: {
                submitWhiteIP: () => {
                    KoolClash.disableAllButton();
                    let data = Base64.encode(E('_koolclash_firewall_white_ipset').value);

                    E('koolclash-btn-submit-white-ip').innerHTML = `????????????`;
                    let id = parseInt(Math.random() * 100000000),
                        postData = JSON.stringify({
                            id,
                            "method": "koolclash_main.sh",
                            "params": ['firewall_white_ip_add', `${data}`],
                            "fields": ""
                        });

                    $.ajax({
                        type: "POST",
                        cache: false,
                        url: "/_api/",
                        data: postData,
                        dataType: "json",
                        success: (resp) => {
                            E('koolclash-btn-submit-white-ip').innerHTML = `??????????????????????????? Clash ????????????`;
                            setTimeout(() => {
                                KoolClash.enableAllButton();
                                E('koolclash-btn-submit-white-ip').innerHTML = '??????';
                            }, 2500)
                        },
                        error: () => {
                            E('koolclash-btn-submit-white-ip').innerHTML = `???????????????????????????`;
                            setTimeout(() => {
                                KoolClash.enableAllButton();
                                E('koolclash-btn-submit-white-ip').innerHTML = '??????';
                            }, 2500)
                        }
                    });
                },
            },
            submitWatchdog: () => {
                KoolClash.disableAllButton();
                E('koolclash-btn-submit-watchdog').innerHTML = `????????????`;

                let id = parseInt(Math.random() * 100000000),
                    postData = JSON.stringify({
                        id,
                        "method": "koolclash_main.sh",
                        "params": [ "koolclash_watchdog_enable", `${E('_koolclash-select-watchdog').value}`],
                        "fields": ""
                    });

                $.ajax({
                    type: "POST",
                    cache: false,
                    url: "/_api/",
                    data: postData,
                    dataType: "json",
                    success: (resp) => {
                        E('koolclash-btn-submit-watchdog').innerHTML = `??????????????????????????? Clash ????????????`;
                        setTimeout(() => {
                            KoolClash.enableAllButton();
                            E('koolclash-btn-submit-watchdog').innerHTML = '??????';
                        }, 2500)
                    },
                    error: () => {
                        E('koolclash-btn-submit-watchdog').innerHTML = `???????????????????????????`;
                        setTimeout(() => {
                            KoolClash.enableAllButton();
                            E('koolclash-btn-submit-watchdog').innerHTML = '??????';
                        }, 2500)
                    }
                });
            },
            load: (cb) => {
                window.dbus = {}
                document.title = 'KoolClash - Clash for Koolshare OpenWrt/LEDE';

                fetch(`/_api/koolclash`, { method: 'GET' })
                    .then((resp) => Promise.all([resp.ok, resp.status, resp.json(), resp.headers]))
                    .then(([ok, status, data, headers]) => {
                        if (ok) {
                            window.dbus = data.result[0];
                            
                        } else {
                            throw new Error(JSON.stringify(json.error));
                        }
                    })
                    .then((res) => {
                        if (typeof $('#koolclash-field').forms === 'function') {
                            KoolClash.renderUI();
                            E('koolclash-version-msg').innerHTML = `??????????????????&nbsp;:&nbsp;<span id="koolclash-version-installed" style="color:red; margin-top: 8px">${window.dbus.koolclash_version}</span>`;
                            var obj = E("_koolclash-select-nodelist");
                            obj.options.length = 0;
                            var node_arr;
                            if (window.dbus.koolclash_node_list) {
                                node_arr = window.dbus.koolclash_node_list.trim().split(" ");
                            } else {
                                node_arr = [];
                            }
                            for (let index = 0; index < node_arr.length; index++) {
                                const element = node_arr[index];
                                obj.options.add(new Option(element, element));
                            }
                        } else {
                            console.clear();
                            setTimeout(() => {
                                console.clear();
                                window.location.reload();
                            }, 1000);
                        }
                    })
                    .then((res) => {
                        KoolClash.getClashStatus();
                        //KoolClash.checkUpdate();
                    })
            },
        }

        function verifyFields(r) {
            // ????????? DNS ?????????????????????
            if ($(r).attr("id") === "_koolclash-dns-config-switch") {
                if (E('_koolclash-dns-config-switch').checked) {
                    $('#_koolclash-config-dns').show();
                    $('#koolclash-btn-save-dns-config').show();
                } else {
                    $('#_koolclash-config-dns').hide();
                    if (window.dbus.koolclash_dnsmode === '1') {
                        $('#koolclash-btn-save-dns-config').hide();
                    }
                }
            }/* else if (r.getAttribute('id') === '_koolclash-acl-default-port') {
                if (E('_koolclash-acl-default-port').value === '0') {
                    $('#_koolclash-acl-default-port-user').show();
                } else {
                    $('#_koolclash-acl-default-port-user').hide();
                }
            }*/
        }
    </script>
    <script>
        KoolClash.load();
    </script>
    
</content>
