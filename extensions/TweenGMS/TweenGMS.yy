{
    "id": "255b7ffa-258e-4c30-9ce0-5762f9dd7ddc",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "TweenGMS",
    "IncludedResources": [
        "Scripts\\TweenGMS\\Core\\Ease",
        "Scripts\\TweenGMS\\Core\\TweenNull",
        "Scripts\\TweenGMS\\Core\\TweenFire",
        "Scripts\\TweenGMS\\Core\\TweenCreate",
        "Scripts\\TweenGMS\\Core\\TweenPlay",
        "Scripts\\TweenGMS\\Core\\TweenPause",
        "Scripts\\TweenGMS\\Core\\TweenResume",
        "Scripts\\TweenGMS\\Core\\TweenStop",
        "Scripts\\TweenGMS\\Core\\TweenFinish",
        "Scripts\\TweenGMS\\Core\\TweenFinishDelay",
        "Scripts\\TweenGMS\\Core\\TweenReverse",
        "Scripts\\TweenGMS\\Core\\TweenDestroy",
        "Scripts\\TweenGMS\\Core\\TGMS_TweenBool",
        "Scripts\\TweenGMS\\Core\\TGMS_Callback",
        "Scripts\\TweenGMS\\Core\\TGMS_Event",
        "Scripts\\TweenGMS\\Core\\TGMS_TweenGet",
        "Scripts\\TweenGMS\\Core\\TGMS_TweenSet",
        "Scripts\\TweenGMS\\Core\\TGMS_Utility",
        "Scripts\\TweenGMS\\Core\\SharedTweener",
        "Scripts\\TweenGMS\\Eases and Properties\\Default_Ease_Algorithms",
        "Scripts\\TweenGMS\\Eases and Properties\\Default_Property_Setters",
        "Scripts\\TweenGMS\\Eases and Properties\\Default_Property_Setters_Ext",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TPExt",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TweenCalc",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TweenStep",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TweenDefault",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TweenPath",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TGMS_TweenSimple",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TGMS_TweenDataStructure",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TGMS_TweenView",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TGMS_TweenBackground",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TGMS_TweenTile",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TGMS_TweenSystem",
        "Scripts\\TweenGMS\\Deprecated (Please Remove)\\TweenCopy",
        "Scripts\\TweenGMS\\Deprecated (Please Remove)\\TweenDefine",
        "Objects\\TweenGMS\\obj_SharedTweener",
        "Included Files\\TweenGMS\\Starter_Guide.html",
        "Included Files\\TweenGMS\\Script_Reference.html",
        "Included Files\\TweenGMS\\Project_Downloads.txt",
        "Included Files\\TweenGMS\\Update_Log.txt",
        "Included Files\\TweenGMS\\Required Changes.txt"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "date": "2014-00-06 12:05:00",
    "description": "Tweening Engine",
    "extensionName": "",
    "files": [
        {
            "id": "81fdb496-3371-489c-be4f-e5fc79242d89",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ConfigOptions": [
                {
                    "Key": "default",
                    "Value": 17593242063086
                }
            ],
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "bbce21ad-1cf7-4e77-b9db-23308fab1d05",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_MODE_ONCE",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "60b1cce9-a627-4dbb-843a-167f8be12184",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_MODE_BOUNCE",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "e948eab2-66e7-4463-aa86-467f39cc1e2d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_MODE_PATROL",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "49208335-6e66-48d2-85b8-5ca91b9115c3",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_MODE_LOOP",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "a75ab5a0-bc2b-47fb-9f40-0576b41d59fb",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_MODE_REPEAT",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "e8c94982-6b12-4352-bcbe-c754505e038a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_PLAY",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "64c904d8-8403-4995-9ad8-0ec76bc64edf",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_FINISH",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "ab641759-e22f-446a-adec-33396a5575b4",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_STOP",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "d1702d1d-c62c-4259-9695-3b3b5fe5f95c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_PAUSE",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "a93e90b3-54cc-4d77-9022-d11cd93444c0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_RESUME",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "461dae95-eddc-4e67-904e-5f1434f62e47",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_CONTINUE",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "id": "cabd2e34-b8f4-4b06-9d56-e839704b16c6",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_REVERSE",
                    "hidden": false,
                    "value": "6"
                },
                {
                    "id": "5c3e6d73-fb8d-40a7-b6ae-8aa81cfd4e54",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_STOP_DELAY",
                    "hidden": false,
                    "value": "7"
                },
                {
                    "id": "eef53809-8b89-48d5-8686-fd1a5330297a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_PAUSE_DELAY",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "134d9952-a161-4bad-a917-d5f751d12d02",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_RESUME_DELAY",
                    "hidden": false,
                    "value": "9"
                },
                {
                    "id": "3e0f8595-22af-4c4d-9120-326c917732be",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_FINISH_DELAY",
                    "hidden": false,
                    "value": "10"
                },
                {
                    "id": "473c786a-a133-4481-9496-421a70c23217",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEENS_ALL",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "530584ce-ec64-40f3-a864-c6d416024504",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEENS_GROUP",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "2bd93253-9346-4f06-86b5-e923d990fe77",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEENS_TARGET",
                    "hidden": false,
                    "value": "3"
                }
            ],
            "filename": "TGMS_Setup.gml",
            "final": "TGMS_Ext_Final",
            "functions": [
                {
                    "id": "bb939ff3-0031-4274-be9a-2a6d4bb6c621",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "",
                    "help": "",
                    "hidden": false,
                    "kind": 0,
                    "name": "TGMS_Ext_Init",
                    "returnType": 2
                },
                {
                    "id": "7f626ef0-fed2-468f-a565-e4dfdc2ed6f1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "",
                    "help": "",
                    "hidden": false,
                    "kind": 0,
                    "name": "TGMS_Ext_Final",
                    "returnType": 2
                }
            ],
            "init": "TGMS_Ext_Init",
            "kind": 2,
            "maskTarget": 0,
            "order": [
                
            ],
            "origname": "extensions\\TGMS_Setup.gml",
            "uncompress": false
        },
        {
            "id": "95b2bf36-53ae-42e5-97a2-69d97184f853",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ConfigOptions": [
                {
                    "Key": "default",
                    "Value": 0
                }
            ],
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "filename": "TERMS_OF_USE.txt",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 4,
            "maskTarget": 0,
            "order": [
                
            ],
            "origname": "extensions\\TERMS_OF_USE.txt",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "C:\\Users\\Stephen\\Dropbox\\My Projects\\GameMaker\\Tools\\TweenGMS\\Documentation\\TweenGMS_Reference.html",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosplistinject": "",
    "license": "* TERMS OF USE - TweenGMS\\u000d\\u000a* Copyright (c)2014 Stephen Loney\\u000d\\u000a* All rights reserved.\\u000d\\u000a* Redistribution of source files, with or without modification, is prohibited, unless special permission is granted. However, redistribution of source files, with or without modification, may be transferred internally among project team members.\\u000d\\u000a* Redistribution and use in binary forms, with or without modification, are permitted provided that the following conditions are met:\\u000d\\u000a* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and\/or other materials provided with the distribution.\\u000d\\u000a* Neither the name of the author nor the names of contributors may be used to endorse or promote products derived from this software without specific prior written permission.\\u000d\\u000a* Distributed applications using this tool must credit \"Stephen Loney\" within the application or its associated documentation. However, those who have donated to this project are exempt from having to do so.\\u000d\\u000a* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\\u000d\\u000a*\\u000d\\u000a* ================================================\\u000d\\u000a*\\u000d\\u000a* TERMS OF USE - EASING EQUATIONS\\u000d\\u000a* Open source under the BSD License.\\u000d\\u000a* Copyright (c)2001 Robert Penner\\u000d\\u000a* All rights reserved.\\u000d\\u000a* Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:\\u000d\\u000a* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.\\u000d\\u000a* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and\/or other materials provided with the distribution.\\u000d\\u000a* Neither the name of the author nor the names of contributors may be used to endorse or promote products derived from this software without specific prior written permission.\\u000d\\u000a* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\\u000d\\u000a*",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "com.8bitwarrior.tweengms",
    "productID": "4017B2D58828FB76C8CC13C0B0E44317",
    "sourcedir": "",
    "version": "0.9.75"
}