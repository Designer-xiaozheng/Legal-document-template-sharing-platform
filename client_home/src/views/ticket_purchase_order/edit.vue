<template>
	<div class="diy_edit page_ticket_purchase_order" id="ticket_purchase_order_edit">
		<div class='warp'>
			<div class='container'>
				<div class='row'>
					<div v-if="$check_field('set','train_number') || $check_field('add','train_number') || $check_field('get','train_number')" class="col-12 col-md-6">
						<div class="diy_title">
							<span>火车编号:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_train_number" v-model="form['train_number']" placeholder="请输入火车编号" v-if="(form['train_number'] && $check_field('set','train_number')) || (!form['train_number'] && $check_field('add','train_number'))"  :disabled="disabledObj['train_number_isDisabled']"/>
							<span v-else-if="$check_field('get','train_number')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','departure_station') || $check_field('add','departure_station') || $check_field('get','departure_station')" class="col-12 col-md-6">
						<div class="diy_title">
							<span>出发站:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_departure_station" v-model="form['departure_station']" placeholder="请输入出发站" v-if="(form['departure_station'] && $check_field('set','departure_station')) || (!form['departure_station'] && $check_field('add','departure_station'))"  :disabled="disabledObj['departure_station_isDisabled']"/>
							<span v-else-if="$check_field('get','departure_station')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','station_along_the_way') || $check_field('add','station_along_the_way') || $check_field('get','station_along_the_way')" class="col-12 col-md-6">
						<div class="diy_title">
							<span>沿途站:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_station_along_the_way" v-model="form['station_along_the_way']" placeholder="请输入沿途站" v-if="(form['station_along_the_way'] && $check_field('set','station_along_the_way')) || (!form['station_along_the_way'] && $check_field('add','station_along_the_way'))"  :disabled="disabledObj['station_along_the_way_isDisabled']"/>
							<span v-else-if="$check_field('get','station_along_the_way')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','terminus') || $check_field('add','terminus') || $check_field('get','terminus')" class="col-12 col-md-6">
						<div class="diy_title">
							<span>终点站:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_terminus" v-model="form['terminus']" placeholder="请输入终点站" v-if="(form['terminus'] && $check_field('set','terminus')) || (!form['terminus'] && $check_field('add','terminus'))"  :disabled="disabledObj['terminus_isDisabled']"/>
							<span v-else-if="$check_field('get','terminus')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','departure_time') || $check_field('add','departure_time') || $check_field('get','departure_time')" class="col-12 col-md-6">
						<div class="diy_title">
							<span>发车时间:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_departure_time" v-model="form['departure_time']" placeholder="请输入发车时间" v-if="(form['departure_time'] && $check_field('set','departure_time')) || (!form['departure_time'] && $check_field('add','departure_time'))"  :disabled="disabledObj['departure_time_isDisabled']"/>
							<span v-else-if="$check_field('get','departure_time')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','seat_type') || $check_field('add','seat_type') || $check_field('get','seat_type')" class="col-12 col-md-6">
						<div class="diy_title">
							<span>座位类型:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_seat_type" v-model="form['seat_type']" placeholder="请输入座位类型" v-if="(form['seat_type'] && $check_field('set','seat_type')) || (!form['seat_type'] && $check_field('add','seat_type'))"  :disabled="disabledObj['seat_type_isDisabled']"/>
							<span v-else-if="$check_field('get','seat_type')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','seat_price') || $check_field('add','seat_price') || $check_field('get','seat_price')" class="col-12 col-md-6">
						<div class="diy_title">
							<span>座位价格:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_seat_price" v-model="form['seat_price']" placeholder="请输入座位价格" v-if="(form['seat_price'] && $check_field('set','seat_price')) || (!form['seat_price'] && $check_field('add','seat_price'))"  :disabled="disabledObj['seat_price_isDisabled']"/>
							<span v-else-if="$check_field('get','seat_price')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','ticket_no') || $check_field('add','ticket_no') || $check_field('get','ticket_no')" class="col-12 col-md-6">
						<div class="diy_title">
							<span>车票编号:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_ticket_no" v-model="form['ticket_no']" placeholder="请输入车票编号" v-if="(form['ticket_no'] && $check_field('set','ticket_no')) || (!form['ticket_no'] && $check_field('add','ticket_no'))" :disabled="true"/>
							<span v-else-if="$check_field('get','ticket_no')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','purchase_user') || $check_field('add','purchase_user') || $check_field('get','purchase_user')" class="col-12 col-md-6">
						<div class="diy_title">
							<span>购买用户:
							</span>
						</div>
						<div class="diy_field diy_down">
							<select id="form_purchase_user" :disabled="disabledObj['purchase_user_isDisabled']" v-model="form['purchase_user']" v-if="(form['purchase_user'] && $check_field('set','purchase_user')) || (!form['purchase_user'] && $check_field('add','purchase_user'))" >
								<option v-for="o in list_user_purchase_user" :value="o['user_id']">
									{{o['nickname'] + '-' + o['username']}}
								</option>
							</select>
							<span v-else-if="$check_field('get','purchase_user')">{{ form['purchase_user'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','ticket_purchase_time') || $check_field('add','ticket_purchase_time') || $check_field('get','ticket_purchase_time')" class="col-12 col-md-6">
						<div class="diy_title">
							<span>购票时间:
							</span>
						</div>
						<!-- 时间 -->
						<div class="diy_field diy_time">
							<input type="time" :disabled="disabledObj['ticket_purchase_time_isDisabled']" id="form_ticket_purchase_time" v-model="form['ticket_purchase_time']" placeholder="请输入购票时间" v-if="(form['ticket_purchase_time'] && $check_field('set','ticket_purchase_time')) || (!form['ticket_purchase_time'] && $check_field('add','ticket_purchase_time'))" />
							<span v-else-if="$check_field('get','ticket_purchase_time')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','number_of_votes_purchased') || $check_field('add','number_of_votes_purchased') || $check_field('get','number_of_votes_purchased')" class="col-12 col-md-6">
						<div class="diy_title">
							<span>购买票数:
							</span>
						</div>
						<!-- 数字 -->
						<div class="diy_field diy_number">
							<input type="number" id="form_number_of_votes_purchased" v-model.number="form['number_of_votes_purchased']" placeholder="请输入购买票数" v-if="(form['number_of_votes_purchased'] && $check_field('set','number_of_votes_purchased')) || (!form['number_of_votes_purchased'] && $check_field('add','number_of_votes_purchased'))" :disabled="disabledObj['number_of_votes_purchased_isDisabled']" />
							<span v-else-if="$check_field('get','number_of_votes_purchased')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','payment_amount') || $check_field('add','payment_amount') || $check_field('get','payment_amount')" class="col-12 col-md-6">
						<div class="diy_title">
							<span>支付金额:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_payment_amount" v-model="form['payment_amount']" placeholder="请输入支付金额" v-if="(form['payment_amount'] && $check_field('set','payment_amount')) || (!form['payment_amount'] && $check_field('add','payment_amount'))"  @focus="set_payment_amount()" :disabled="disabledObj['payment_amount_isDisabled']"/>
							<span v-else-if="$check_field('get','payment_amount')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','ticket_purchase_instructions') || $check_field('add','ticket_purchase_instructions') || $check_field('get','ticket_purchase_instructions')" class="col-12 col-md-6">
						<div class="diy_title">
							<span>购票须知:
							</span>
						</div>
						<!-- 多文本 -->
						<div class="diy_field diy_desc">
							<textarea id="form_ticket_purchase_instructions" v-model="form['ticket_purchase_instructions']" v-if="(form['ticket_purchase_instructions'] && $check_field('set','ticket_purchase_instructions')) || (!form['ticket_purchase_instructions'] && $check_field('add','ticket_purchase_instructions'))" :disabled="disabledObj['ticket_purchase_instructions_isDisabled']" />
							<span v-else-if="$check_field('get','ticket_purchase_instructions')">{{ form[''] }}</span>
						</div>
					</div>

				</div>
				<div class="row">
					<div class="col-12">
						<div class="btn_box">
							<button class="btn_submit" @click="submit()">提交</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import mixin from "@/mixins/page.js";
	export default {
		mixins: [mixin],
		components: {},
		data() {
			return {
				url_get_obj: "~/api/ticket_purchase_order/get_obj?",
				url_add: "~/api/ticket_purchase_order/add?",
				url_set: "~/api/ticket_purchase_order/set?",

				// 登录权限
				oauth: {
					"signIn": true,
					"user_group": []
				},

				// 查询条件
				query: {
					"train_number": "",
					"departure_station": "",
					"station_along_the_way": "",
					"terminus": "",
					"departure_time": "",
					"seat_type": "",
					"seat_price": "",
					"ticket_no": "",
					"purchase_user": 0,
					"ticket_purchase_time": "",
					"number_of_votes_purchased": 0,
					"payment_amount": "",
					"ticket_purchase_instructions": "",
					"ticket_purchase_order_id": 0,
				},

				obj: {
					"train_number":'', // 火车编号
					"departure_station":'', // 出发站
					"station_along_the_way":'', // 沿途站
					"terminus":'', // 终点站
					"departure_time":'', // 发车时间
					"seat_type":'', // 座位类型
					"seat_price":'', // 座位价格
					"ticket_no":this.$get_stamp(), // 车票编号
					"purchase_user": 0, // 购买用户
					"ticket_purchase_time": "1970-01-01 00:00:00",
					"number_of_votes_purchased":0, // 购买票数
					"payment_amount":'', // 支付金额
					"ticket_purchase_instructions":'', // 购票须知
					"ticket_purchase_order_id": 0,
				},

				// 表单字段
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
					"ticket_purchase_time": "1970-01-01 00:00:00",
					"number_of_votes_purchased":0, // 购买票数
					"payment_amount":'', // 支付金额
					"ticket_purchase_instructions":'', // 购票须知
					"ticket_purchase_order_id": 0,

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

				// ID字段
				field: "ticket_purchase_order_id",
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
			async get_user_session_purchase_user(){
				var _this = this;
				var json = await this.$get("~/api/user_group/get_obj?name=普通用户");
				if(json.result && json.result.obj){
					var source_table = json.result.obj.source_table;
					var user_id = _this.$store.state.user.user_id;
					if (user_id){
						var url = "~/api/"+source_table+"/get_obj?"
						this.$get(url, {"user_id":_this.$store.state.user.user_id}, function(res) {
							if (res.result && res.result.obj) {
								var arr = []
								for (let key in res.result.obj) {
									arr.push(key)
								}
								var arrForm = []
								for (let key in _this.form) {
									arrForm.push(key)
								}
								_this.form["purchase_user"] = user_id
								_this.disabledObj['purchase_user' + '_isDisabled'] = true
								for (var i=0;i<arr.length;i++){
									for (var j=0;j<arrForm.length;j++){
										if (arr[i]===arrForm[j]){
											if (arr[i]!=="purchase_user") {
												_this.form[arrForm[j]] = res.result.obj[arr[i]]
												_this.disabledObj[arrForm[j] + '_isDisabled'] = true
												break;
											}
										}
									}
								}
							}
						});
					}
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			set_payment_amount(){
				this.form.payment_amount =this.form.seat_price * this.form.number_of_votes_purchased
			},

			/**
			 * 修改文件
			 * @param { Object } files 上传文件对象
			 * @param { String } str 表单的属性名
			 */
			change_file(files, str) {
				var form = new FormData();
				form.append("file", files[0]);
				this.$post("~/api/ticket_purchase_order/upload?", form, (res) => {
					if (res.result) {
						this.form[str] = res.result.url;
					} else if (res.error) {
						this.$toast(res.error.message);
					}
				});
			},

			/**
			 * 获取对象后获取缓存表单
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_before(param){
				var form = $.db.get("form");
				if (form) {
					this.obj = $.push(this.obj ,form);
					this.form = $.push(this.form ,form);
				}
				var arr = []
				for (let key in form) {
					arr.push(key)
				}
				for (var i=0;i<arr.length;i++){
					this.disabledObj[arr[i] + '_isDisabled'] = true
				}
				return param;
			},

			/**
			 * 获取对象后获取缓存表单
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json ,func){
				var form = $.db.get("form");
				var obj = Object.assign({} ,form ,this.obj);
				if (form) {
					this.obj = $.push(this.obj ,obj);
				}
				if (form) {
					this.form = $.push(this.form ,form);
				}
				if(func){
					func(json);
				}
			},

		},
		created() {
			this.get_user_session_purchase_user();
			this.get_list_user_purchase_user();
		}
	}
</script>

<style>
</style>
