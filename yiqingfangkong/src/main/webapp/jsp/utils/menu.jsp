<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

var menus = [

	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员信息"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"业主管理",
			            "menuJump":"列表",
			            "tableName":"yonghu"
			        }
			    ],
			    "menu":"业主管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"疫情策略管理",
			            "menuJump":"列表",
			            "tableName":"yiqingcelve"
			        }
			    ],
			    "menu":"疫情策略管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"疫情分布管理",
			            "menuJump":"列表",
			            "tableName":"yiqingfenbu"
			        }
			    ],
			    "menu":"疫情分布管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"代购记录管理",
                        "menuJump":"列表",
                        "tableName":"daigou"
                    }
                ],
                "menu":"代购记录管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"健康信息打卡",
                        "menuJump":"列表",
                        "tableName":"jiankangdakai"
                    }
                ],
                "menu":"健康打卡管理"
            }
            
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"消毒记录管理",
                        "menuJump":"列表",
                        "tableName":"xiaodu"
                    }
                ],
                "menu":"消毒记录管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"来访人员记录管理",
			            "menuJump":"列表",
			            "tableName":"laifangren"
			        }
			    ],
			    "menu":"来访人员记录管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"业主出入记录管理",
                        "menuJump":"列表",
                        "tableName":"yezhuchuru"
                    }
                ],
                "menu":"业主出入记录管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"举报记录管理",
			            "menuJump":"列表",
			            "tableName":"jubao"
			        }
			    ],
			    "menu":"举报记录管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"公告管理",
			            "menuJump":"列表",
			            "tableName":"news"
			        }
					,
					{
					    "buttons":[
					        "查看",
					        "新增",
					        "修改",
					        "删除"
					    ],
					    "menu":"公告类型管理",
					    "menuJump":"列表",
					    "tableName":"dictionaryNews"
					}
			    ],
			    "menu":"公告管理"
			}
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    }
	,
	{
	    "backMenu":[
	       {
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"疫情策略管理",
			            "menuJump":"列表",
			            "tableName":"yiqingcelve"
			        }
			    ],
			    "menu":"疫情策略管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"疫情分布管理",
			            "menuJump":"列表",
			            "tableName":"yiqingfenbu"
			        }
			    ],
			    "menu":"疫情分布管理"
			}
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                        "新增",
	                        "修改"
	                    ],
	                    "menu":"代购记录管理",
	                    "menuJump":"列表",
	                    "tableName":"daigou"
	                }
	            ],
	            "menu":"代购记录管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                        "新增"
	                    ],
	                    "menu":"健康信息打卡",
	                    "menuJump":"列表",
	                    "tableName":"jiankangdakai"
	                }
	            ],
	            "menu":"健康打卡管理"
	        }
	        
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"消毒记录管理",
	                    "menuJump":"列表",
	                    "tableName":"xiaodu"
	                }
	            ],
	            "menu":"消毒记录管理"
	        }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"来访人员记录管理",
			            "menuJump":"列表",
			            "tableName":"laifangren"
			        }
			    ],
			    "menu":"来访人员记录管理"
			}
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                        "新增"
	                    ],
	                    "menu":"业主出入记录管理",
	                    "menuJump":"列表",
	                    "tableName":"yezhuchuru"
	                }
	            ],
	            "menu":"业主出入记录管理"
	        }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增"
			            ],
			            "menu":"举报记录管理",
			            "menuJump":"列表",
			            "tableName":"jubao"
			        }
			    ],
			    "menu":"举报记录管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"公告管理",
			            "menuJump":"列表",
			            "tableName":"news"
			        }
			    ],
			    "menu":"公告管理"
			}
	    ],
	    "frontMenu":[
	
	    ],
	    "roleName":"业主",
	    "tableName":"yonghu"
	}
];

var hasMessage = '';
