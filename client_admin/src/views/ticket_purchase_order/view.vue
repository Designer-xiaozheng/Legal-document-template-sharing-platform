<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','train_number') || $check_field('add','train_number') || $check_field('set','train_number')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="火车编号" prop="train_number">
					<el-input id="train_number" v-model="form['train_number']" placeholder="请输入火车编号"
							  v-if="user_group === '管理员' || (form['ticket_purchase_order_id'] && $check_field('set','train_number')) || (!form['ticket_purchase_order_id'] && $check_field('add','train_number'))" :disabled="disabledObj['train_number_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','train_number')">{{form['train_number']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','departure_station') || $check_field('add','departure_station') || $check_field('set','departure_station')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="出发站" prop="departure_station">
					<el-input id="departure_station" v-model="form['departure_station']" placeholder="请输入出发站"
							  v-if="user_group === '管理员' || (form['ticket_purchase_order_id'] && $check_field('set','departure_station')) || (!form['ticket_purchase_order_id'] && $check_field('add','departure_station'))" :disabled="disabledObj['departure_station_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','departure_station')">{{form['departure_station']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','station_along_the_way') || $check_field('add','station_along_the_way') || $check_field('set','station_along_the_way')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="沿途站" prop="station_along_the_way">
					<el-input id="station_along_the_way" v-model="form['station_along_the_way']" placeholder="请输入沿途站"
							  v-if="user_group === '管理员' || (form['ticket_purchase_order_id'] && $check_field('set','station_along_the_way')) || (!form['ticket_purchase_order_id'] && $check_field('add','station_along_the_way'))" :disabled="disabledObj['station_along_the_way_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','station_along_the_way')">{{form['station_along_the_way']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','terminus') || $check_field('add','terminus') || $check_field('set','terminus')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="终点站" prop="terminus">
					<el-input id="terminus" v-model="form['terminus']" placeholder="请输入终点站"
							  v-if="user_group === '管理员' || (form['ticket_purchase_order_id'] && $check_field('set','terminus')) || (!form['ticket_purchase_order_id'] && $check_field('add','terminus'))" :disabled="disabledObj['terminus_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','terminus')">{{form['terminus']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','departure_time') || $check_field('add','departure_time') || $check_field('set','departure_time')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="发车时间" prop="departure_time">
					<el-input id="departure_time" v-model="form['departure_time']" placeholder="请输入发车时间"
							  v-if="user_group === '管理员' || (form['ticket_purchase_order_id'] && $check_field('set','departure_time')) || (!form['ticket_purchase_order_id'] && $check_field('add','departure_time'))" :disabled="disabledObj['departure_time_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','departure_time')">{{form['departure_time']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','seat_type') || $check_field('add','seat_type') || $check_field('set','seat_type')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="座位类型" prop="seat_type">
					<el-input id="seat_type" v-model="form['seat_type']" placeholder="请输入座位类型"
							  v-if="user_group === '管理员' || (form['ticket_purchase_order_id'] && $check_field('set','seat_type')) || (!form['ticket_purchase_order_id'] && $check_field('add','seat_type'))" :disabled="disabledObj['seat_type_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','seat_type')">{{form['seat_type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','seat_price') || $check_field('add','seat_price') || $check_field('set','seat_price')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="座位价格" prop="seat_price">
					<el-input id="seat_price" v-model="form['seat_price']" placeholder="请输入座位价格"
							  v-if="user_group === '管理员' || (form['ticket_purchase_order_id'] && $check_field('set','seat_price')) || (!form['ticket_purchase_order_id'] && $check_field('add','seat_price'))" :disabled="disabledObj['seat_price_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','seat_price')">{{form['seat_price']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','ticket_no') || $check_field('add','ticket_no') || $check_field('set','ticket_no')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="车票编号" prop="ticket_no">
					<el-input id="ticket_no" v-model="form['ticket_no']" placeholder="请输入车票编号"
							  v-if="user_group === '管理员' || (form['ticket_purchase_order_id'] && $check_field('set','ticket_no')) || (!form['ticket_purchase_order_id'] && $check_field('add','ticket_no'))" :disabled="true"></el-input>
					<div v-else-if="$check_field('get','ticket_no')">{{form['ticket_no']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','purchase_user') || $check_field('add','purchase_user') || $check_field('set','purchase_user')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="购买用户" prop="purchase_user">
						<div v-if="user_group !== '管理员'">
							{{ get_user_session_purchase_user(form['purchase_user']) }}
							<!--<el-input id="business_name" v-model="form['purchase_user']" placeholder="请输入购买用户"-->
							<!--v-if="user_group === '管理员' || (form['ticket_purchase_order_id'] && $check_field('set','purchase_user')) || (!form['ticket_purchase_order_id'] && $check_field('add','purchase_user'))" :disabled="disabledObj['purchase_user_isDisabled']"></el-input>-->
							<!--<div v-else-if="$check_field('get','purchase_user')">{{form['purchase_user']}}</div>-->
							<el-select v-if="user_group === '管理员' || (form['ticket_purchase_order_id'] && $check_field('set','purchase_user')) || (!form['ticket_purchase_order_id'] && $check_field('add','purchase_user'))" id="purchase_user" v-model="form['purchase_user']" :disabled="disabledObj['purchase_user_isDisabled']">
								<el-option v-for="o in list_user_purchase_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
							<el-select v-else-if="$check_field('get','purchase_user')" id="purchase_user" v-model="form['purchase_user']" :disabled="true">
								<el-option v-for="o in list_user_purchase_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
						</div>
						<el-select v-else id="purchase_user" v-model="form['purchase_user']" :disabled="disabledObj['purchase_user_isDisabled']">
							<el-option v-for="o in list_user_purchase_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','ticket_purchase_time') || $check_field('add','ticket_purchase_time') || $check_field('set','ticket_purchase_time')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="购票时间" prop="ticket_purchase_time">
					<el-time-picker v-if="user_group === '管理员' || (form['ticket_purchase_order_id'] && $check_field('set','ticket_purchase_time')) || (!form['ticket_purchase_order_id'] && $check_field('add','ticket_purchase_time'))" id="ticket_purchase_time"
						v-model="form['ticket_purchase_time']" placeholder="选择时间">
					</el-time-picker>
					<div v-else-if="$check_field('get','ticket_purchase_time')">{{form['ticket_purchase_time']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','number_of_votes_purchased') || $check_field('add','number_of_votes_purchased') || $check_field('set','number_of_votes_purchased')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="购买票数" prop="number_of_votes_purchased">
					<el-input-number id="number_of_votes_purchased" v-model.number="form['number_of_votes_purchased']"
						v-if="user_group === '管理员' || (form['ticket_purchase_order_id'] && $check_field('set','number_of_votes_purchased')) || (!form['ticket_purchase_order_id'] && $check_field('add','number_of_votes_purchased'))"></el-input-number>
					<div v-else-if="$check_field('get','number_of_votes_purchased')">{{form['number_of_votes_purchased']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','payment_amount') || $check_field('add','payment_amount') || $check_field('set','payment_amount')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="支付金额" prop="payment_amount">
					<el-input id="payment_amount" v-model="form['payment_amount']" placeholder="请输入支付金额"
							  v-if="user_group === '管理员' || (form['ticket_purchase_order_id'] && $check_field('set','payment_amount')) || (!form['ticket_purchase_order_id'] && $check_field('add','payment_amount'))"  @focus="set_payment_amount()" :disabled="disabledObj['payment_amount_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','payment_amount')">{{form['payment_amount']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','ticket_purchase_instructions') || $check_field('add','ticket_purchase_instructions') || $check_field('set','ticket_purchase_instructions')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="购票须知" prop="ticket_purchase_instructions">
					<el-input type="textarea" id="ticket_purchase_instructions" v-model="form['ticket_purchase_instructions']" placeholder="请输入购票须知"
						v-if="user_group === '管理员' || (form['ticket_purchase_order_id'] && $check_field('set','ticket_purchase_instructions')) || (!form['ticket_purchase_order_id'] && $check_field('add','ticket_purchase_instructions'))" :disabled="disabledObj['ticket_purchase_instructions_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','ticket_purchase_instructions')">{{form['ticket_purchase_instructions']}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "ticket_purchase_order_id",
				url_add: "~/api/ticket_purchase_order/add?",
				url_set: "~/api/ticket_purchase_order/set?",
				url_get_obj: "~/api/ticket_purchase_order/get_obj?",
				url_upload: "~/api/ticket_purchase_order/upload?",

				query: {
					"ticket_purchase_order_id": 0,
				},

				form: {
					"train_number":'', // 火车编号
					"departure_station":'', // 出发站
					"station_along_the_way":'', // 沿途站
					"terminus":'', // 终点站
					"departure_time":'', // 发车时间
					"seat_type":'', // 座位类型
					"seat_price":'', // 座位价格
					"ticket_no":this.$get_stamp(), // 车票编号
					"purchase_user": 0, // 购买用户
					"ticket_purchase_time":'', // 购票时间
					"number_of_votes_purchased":0, // 购买票数
					"payment_amount":'', // 支付金额
					"ticket_purchase_instructions":'', // 购票须知
					"ticket_purchase_order_id": 0, // ID

				},
				disabledObj:{
					"train_number_isDisabled": false,
					"departure_station_isDisabled": false,
					"station_along_the_way_isDisabled": false,
					"terminus_isDisabled": false,
					"departure_time_isDisabled": false,
					"seat_type_isDisabled": false,
					"seat_price_isDisabled": false,
					"ticket_no_isDisabled": false,
					"purchase_user_isDisabled": false,
					"ticket_purchase_time_isDisabled": false,
					"payment_amount_isDisabled": false,
					"ticket_purchase_instructions_isDisabled": false,
				},
				// 用户列表
				list_user_purchase_user: [],
				// 用户组
				group_user_purchase_user: "",

			}
		},
		methods: {
			/**
			 * 获取普通用户用户列表
			 */
			async get_list_user_purchase_user() {
                // if(this.user_group !== "管理员" && this.form["purchase_user"] === 0) {
                //     this.form["purchase_user"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=普通用户");
                if(json.result && json.result.list){
                    this.list_user_purchase_user = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
			/**
			 * 获取普通用户用户组
			 */
			async get_group_user_purchase_user() {
				this.form["purchase_user"] = this.user.user_id;
				var json = await this.$get("~/api/user_group/get_obj?name=普通用户");
				if(json.result && json.result.obj){
					this.group_user_purchase_user = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_purchase_user(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_purchase_user.source_table+"/get_obj?"
				this.$get(url, user_id, function(res) {
					if (res.result && res.result.obj) {
						var arr = []
						for (let key in res.result.obj) {
							arr.push(key)
						}
						var arrForm = []
						for (let key in _this.form) {
							arrForm.push(key)
						}
						for (var i=0;i<arr.length;i++){
							for (var j=0;j<arrForm.length;j++){
								if (arr[i]===arrForm[j]){
									if (arr[i]!=="purchase_user") {
										_this.form[arrForm[j]] = res.result.obj[arr[i]]
										_this.disabledObj[arrForm[j] + '_isDisabled'] = true
										break;
									}else {
										_this.disabledObj[arrForm[j] + '_isDisabled'] = true
									}
								}
							}
						}
					}
				});
			},
			get_user_purchase_user(id){
				var obj = this.list_user_purchase_user.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},
			set_payment_amount(){
				this.form.payment_amount =this.form.seat_price * this.form.number_of_votes_purchased
			},

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				// 获取缓存数据附加
				form = $.db.get("form");
				$.push(this.form ,form);
				/**
				* 请求列表前
				* @param {Object} param
				*/
				var user_group = this.user.user_group;
				if (user_group !== "管理员") {
					switch (user_group) {
						case "购买用户":
							if(param["purchase_user"] > 0){
								param["purchase_user"] = this.user.user_id;
							}
							break;
					}
				}
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){
				let reg_ticket_purchase_time = /^(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d$/;
				let regExp_ticket_purchase_time = new RegExp(reg_ticket_purchase_time);
				if(regExp_ticket_purchase_time.test(this.form["ticket_purchase_time"])){
					let dateTmp = "1970-01-01 "+this.form["ticket_purchase_time"].replace(/-/g,'/');
					let timestamp = Date.parse(dateTmp);
					this.form["ticket_purchase_time"] = timestamp;
				}else {
					this.form["ticket_purchase_time"] = this.$toTime(parseInt(this.form["ticket_purchase_time"]),"hh:mm:ss");
				}

			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/ticket_purchase_order/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/ticket_purchase_order/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/ticket_purchase_order/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/ticket_purchase_order/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/ticket_purchase_order/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
			this.get_list_user_purchase_user();
			this.get_group_user_purchase_user();
		}
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}
</style>
