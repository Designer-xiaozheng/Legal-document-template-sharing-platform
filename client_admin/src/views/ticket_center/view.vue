<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','train_number') || $check_field('add','train_number') || $check_field('set','train_number')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="火车编号" prop="train_number">
					<el-input id="train_number" v-model="form['train_number']" placeholder="请输入火车编号"
							  v-if="user_group === '管理员' || (form['ticket_center_id'] && $check_field('set','train_number')) || (!form['ticket_center_id'] && $check_field('add','train_number'))" :disabled="disabledObj['train_number_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','train_number')">{{form['train_number']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','departure_station') || $check_field('add','departure_station') || $check_field('set','departure_station')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="出发站" prop="departure_station">
					<el-input id="departure_station" v-model="form['departure_station']" placeholder="请输入出发站"
							  v-if="user_group === '管理员' || (form['ticket_center_id'] && $check_field('set','departure_station')) || (!form['ticket_center_id'] && $check_field('add','departure_station'))" :disabled="disabledObj['departure_station_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','departure_station')">{{form['departure_station']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','station_along_the_way') || $check_field('add','station_along_the_way') || $check_field('set','station_along_the_way')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="沿途站" prop="station_along_the_way">
					<el-input id="station_along_the_way" v-model="form['station_along_the_way']" placeholder="请输入沿途站"
							  v-if="user_group === '管理员' || (form['ticket_center_id'] && $check_field('set','station_along_the_way')) || (!form['ticket_center_id'] && $check_field('add','station_along_the_way'))" :disabled="disabledObj['station_along_the_way_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','station_along_the_way')">{{form['station_along_the_way']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','terminus') || $check_field('add','terminus') || $check_field('set','terminus')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="终点站" prop="terminus">
					<el-input id="terminus" v-model="form['terminus']" placeholder="请输入终点站"
							  v-if="user_group === '管理员' || (form['ticket_center_id'] && $check_field('set','terminus')) || (!form['ticket_center_id'] && $check_field('add','terminus'))" :disabled="disabledObj['terminus_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','terminus')">{{form['terminus']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','departure_time') || $check_field('add','departure_time') || $check_field('set','departure_time')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="发车时间" prop="departure_time">
					<el-date-picker :disabled="disabledObj['departure_time_isDisabled']" v-if="user_group === '管理员' || (form['ticket_center_id'] && $check_field('set','departure_time')) || (!form['ticket_center_id'] && $check_field('add','departure_time'))" id="departure_time"
						v-model="form['departure_time']" type="datetime" placeholder="选择日期时间">
					</el-date-picker>
					<div v-else-if="$check_field('get','departure_time')">{{form['departure_time']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','seat_type') || $check_field('add','seat_type') || $check_field('set','seat_type')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="座位类型" prop="seat_type">
					<el-select id="seat_type" v-model="form['seat_type']"
						v-if="user_group === '管理员' || (form['ticket_center_id'] && $check_field('set','seat_type')) || (!form['ticket_center_id'] && $check_field('add','seat_type'))">
						<el-option v-for="o in list_seat_type" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','seat_type')">{{form['seat_type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','seat_price') || $check_field('add','seat_price') || $check_field('set','seat_price')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="座位价格" prop="seat_price">
					<el-input-number id="seat_price" v-model.number="form['seat_price']"
						v-if="user_group === '管理员' || (form['ticket_center_id'] && $check_field('set','seat_price')) || (!form['ticket_center_id'] && $check_field('add','seat_price'))"></el-input-number>
					<div v-else-if="$check_field('get','seat_price')">{{form['seat_price']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','remaining_seats') || $check_field('add','remaining_seats') || $check_field('set','remaining_seats')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="剩余座位" prop="remaining_seats">
					<el-input id="remaining_seats" v-model="form['remaining_seats']" placeholder="请输入剩余座位"
							  v-if="user_group === '管理员' || (form['ticket_center_id'] && $check_field('set','remaining_seats')) || (!form['ticket_center_id'] && $check_field('add','remaining_seats'))" :disabled="disabledObj['remaining_seats_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','remaining_seats')">{{form['remaining_seats']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','cover_picture') || $check_field('add','cover_picture') || $check_field('set','cover_picture')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="封面图" prop="cover_picture">
					<el-upload :disabled="disabledObj['cover_picture_isDisabled']" id="cover_picture" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_cover_picture"
						:show-file-list="false" v-if="user_group === '管理员' || (form['ticket_center_id'] && $check_field('set','cover_picture')) || (!form['ticket_center_id'] && $check_field('add','cover_picture'))">
						<img v-if="form['cover_picture']" :src="$fullUrl(form['cover_picture'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','cover_picture')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['cover_picture'])" :preview-src-list="[$fullUrl(form['cover_picture'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','ticket_purchase_instructions') || $check_field('add','ticket_purchase_instructions') || $check_field('set','ticket_purchase_instructions')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="购票须知" prop="ticket_purchase_instructions">
					<el-input type="textarea" id="ticket_purchase_instructions" v-model="form['ticket_purchase_instructions']" placeholder="请输入购票须知"
						v-if="user_group === '管理员' || (form['ticket_center_id'] && $check_field('set','ticket_purchase_instructions')) || (!form['ticket_center_id'] && $check_field('add','ticket_purchase_instructions'))" :disabled="disabledObj['ticket_purchase_instructions_isDisabled']"></el-input>
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
				field: "ticket_center_id",
				url_add: "~/api/ticket_center/add?",
				url_set: "~/api/ticket_center/set?",
				url_get_obj: "~/api/ticket_center/get_obj?",
				url_upload: "~/api/ticket_center/upload?",

				query: {
					"ticket_center_id": 0,
				},

				form: {
					"train_number":'', // 火车编号
					"departure_station":'', // 出发站
					"station_along_the_way":'', // 沿途站
					"terminus":'', // 终点站
					"departure_time":'', // 发车时间
					"seat_type":'', // 座位类型
					"seat_price":0, // 座位价格
					"remaining_seats":'', // 剩余座位
					"cover_picture":'', // 封面图
					"ticket_purchase_instructions":'', // 购票须知
					"ticket_center_id": 0, // ID

				},
				disabledObj:{
					"train_number_isDisabled": false,
					"departure_station_isDisabled": false,
					"station_along_the_way_isDisabled": false,
					"terminus_isDisabled": false,
					"departure_time_isDisabled": false,
					"seat_type_isDisabled": false,
					"remaining_seats_isDisabled": false,
					"cover_picture_isDisabled": false,
					"ticket_purchase_instructions_isDisabled": false,
				},
				//座位类型选项列表
				list_seat_type: ['商务座','一等座','二等座','普通座'],

			}
		},
		methods: {
			/**
			 * 上传封面图
			 * @param {Object} param图片参数
			 */
			upload_cover_picture(param){
				this.uploadFile(param.file, "cover_picture");
			},

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
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
				this.form["departure_time"] = this.$toTime(parseInt(this.form["departure_time"]),"yyyy-MM-dd hh:mm:ss")
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){
				if(parseInt(this.form["departure_time"]) > 9999){
					this.form["departure_time"] = this.$toTime(parseInt(this.form["departure_time"]),"yyyy-MM-dd hh:mm:ss")
				}

			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/ticket_center/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/ticket_center/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/ticket_center/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/ticket_center/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/ticket_center/view','get');
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
