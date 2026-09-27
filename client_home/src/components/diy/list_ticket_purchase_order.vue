<template>
	<div class="diy_home diy_list diy_ticket_purchase_order" id="diy_ticket_purchase_order_list">
		<!-- 列表 -->
		<div class="diy_view_list list list-x" v-if="show">
			<router-link class="diy_card goods diy_list_box_wrap" v-for="(o, i) in list" :key="i"
				:to="'/ticket_purchase_order/details?ticket_purchase_order_id=' + o['ticket_purchase_order_id']">
				<!-- 图片 -->
				<div class="diy_list_img_box" v-if="imgList.length" >
					<div class="diy_row" v-for="(item,index) in imgList" :key="item+index" v-show="$check_field('get',item.name,'/ticket_purchase_order/details') && +item.is_img_list">
						<div class="diy_title diy_list_img_title">
							<span>{{item.title}}:</span>
						</div>
						<div class="diy_field diy_img">
							<img :src="$fullUrl(o[item.name])" style="width:100%;height:100%" />
						</div>
					</div>
				</div>
				<!-- 内容 -->
				<div class="diy_list_item_box">
					<div class="diy_list_item_content" v-for="(item,index) in showItemList" :key="item+index">
						<div class="diy_row" :class="{[item.name]:true}" v-if="$check_field('get',item.name,'/ticket_purchase_order/details') && +item.is_img_list">
							<div class="diy_title">
								<span>{{item.title}}:</span>
							</div>
							<div class="diy_field diy_text">
								<span v-if="item.type == 'UID'" v-text="get_user_name(o[item.name])"></span>
								<span v-else-if="item.type == '日期'" v-text="$toTime(o[item.name],'yyyy-MM-dd')"></span>
								<span v-else-if="item.type == '时间'" v-text="$toTime(o[item.name],'hh:mm:ss')"></span>
								<span v-else-if="item.type == '日长'" v-text="$toTime(o[item.name],'yyyy-MM-dd hh:mm:ss')"></span>
								<span v-else v-text="o[item.name]"></span>
							</div>
						</div>
					</div>
				</div>
			</router-link>
		</div>
		<!-- 表格 -->
		<div class="diy_view_table" v-else>
			<table class="diy_table">
				<tr class="diy_row">
					<th class="diy_title" v-if="$check_field('get','train_number')">火车编号
					</th>
					<th class="diy_title" v-if="$check_field('get','departure_station')">出发站
					</th>
					<th class="diy_title" v-if="$check_field('get','station_along_the_way')">沿途站
					</th>
					<th class="diy_title" v-if="$check_field('get','terminus')">终点站
					</th>
					<th class="diy_title" v-if="$check_field('get','departure_time')">发车时间
					</th>
					<th class="diy_title" v-if="$check_field('get','seat_type')">座位类型
					</th>
					<th class="diy_title" v-if="$check_field('get','seat_price')">座位价格
					</th>
					<th class="diy_title" v-if="$check_field('get','ticket_no')">车票编号
					</th>
					<th class="diy_title" v-if="$check_field('get','purchase_user')">购买用户
					</th>
					<th class="diy_title" v-if="$check_field('get','ticket_purchase_time')">购票时间
					</th>
					<th class="diy_title" v-if="$check_field('get','number_of_votes_purchased')">购买票数
					</th>
					<th class="diy_title" v-if="$check_field('get','payment_amount')">支付金额
					</th>
					<th class="diy_title" v-if="$check_field('get','ticket_purchase_instructions')">购票须知
					</th>
				</tr>
				<tr class="diy_row" v-for="(o,i) in list" :key="o+i">
					<td class="diy_field diy_text" v-if="$check_field('get','train_number')">
						<span>
							{{ o["train_number"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','departure_station')">
						<span>
							{{ o["departure_station"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','station_along_the_way')">
						<span>
							{{ o["station_along_the_way"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','terminus')">
						<span>
							{{ o["terminus"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','departure_time')">
						<span>
							{{ o["departure_time"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','seat_type')">
						<span>
							{{ o["seat_type"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','seat_price')">
						<span>
							{{ o["seat_price"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','ticket_no')">
						<span>
							{{ o["ticket_no"] }}
						</span>
					</td>
					<td class="diy_field diy_uid" v-if="$check_field('get','purchase_user')">
						<span>
							{{ get_user_name(o['purchase_user']) }}
						</span>
					</td>
					<td class="diy_field diy_time" v-if="$check_field('get','ticket_purchase_time')">
						<span>
							{{ $toTime(o["ticket_purchase_time"] ,"hh:mm:ss") }}
						</span>
					</td>
					<td class="diy_field diy_number" v-if="$check_field('get','number_of_votes_purchased')">
						<span>
							{{ o["number_of_votes_purchased"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','payment_amount')">
						<span>
							{{ o["payment_amount"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','ticket_purchase_instructions')">
						<span>
							{{ o["ticket_purchase_instructions"] }}
						</span>
					</td>
				</tr>
			</table>
		</div>
	</div>
</template>

<script>
	export default {
		props: {
			list: {
				type: Array,
				default: function() {
					return [];
				},
			},
			show: {
				type: Boolean,
				default: function(){
					return true;
				}
			}
		},
		data() {
			return {
						imgList: [
						],
						itemList: [
								{
									title: "火车编号",
									name: "train_number",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "出发站",
									name: "departure_station",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "沿途站",
									name: "station_along_the_way",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "终点站",
									name: "terminus",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "发车时间",
									name: "departure_time",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "座位类型",
									name: "seat_type",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "座位价格",
									name: "seat_price",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "车票编号",
									name: "ticket_no",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "购买用户",
									name: "purchase_user",
									type: "UID",
									is_img_list: "0"
								},
								{
									title: "购票时间",
									name: "ticket_purchase_time",
									type: "时间",
									is_img_list: "0"
								},
								{
									title: "购买票数",
									name: "number_of_votes_purchased",
									type: "数字",
									is_img_list: "0"
								},
								{
									title: "支付金额",
									name: "payment_amount",
									type: "文本",
									is_img_list: "0"
								},
						],
						richList: [
								{
									title: "购票须知",
									name: "ticket_purchase_instructions",
									type: "多文本"
								},
						],
				// 用户列表
				list_user_purchase_user: [],
			};
		},
		methods: {
			/**
			 * 获取普通用户用户列表
			 */
			async get_list_user_purchase_user() {
				var json = await this.$get("~/api/user/get_list?user_group=普通用户");
				if(json.result && json.result.list){
					this.list_user_purchase_user = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_name(id){
				var obj = this.list_user_purchase_user.getObj({"user_id":id});
				var ret = "";
				if(obj){
					ret = obj.nickname+"-"+obj.username;
					// if(obj.nickname){
					// 	ret = obj.nickname;
					// }
					// else{
					// 	ret = obj.username;
					// }
				}
				return ret;
			},
		},
		created() {
			this.get_list_user_purchase_user();
		},
		computed:{
			showItemList(){
				let arr = [];
				let _type = ["视频","音频","文件"];
				this.itemList.forEach(item => {
					if(_type.indexOf(item.type) === -1 && !!+item.is_img_list){
						arr.push(item)
					}
				})
				return arr.slice(0,4);
			}
		}
	};
</script>

<style scoped>
	.media {
		display: flex;
		flex-direction: column;
		justify-content: space-between;
		flex-basis: 75%;
		min-height: 10rem;
	}

	.goods {
		display: flex;
		width: calc(25% - 1rem);
		margin: 0.5rem;
		padding: 0.5rem;
		flex-direction: column;
		justify-content: space-between;
		background-color: white;
		border-radius: 0.5rem;
	}

	.goods:hover {
		border: 0.2rem solid #909399;
		box-shadow: 0 0.1rem 0.3rem rgba(0, 0, 0, 0.15);
	}

	.goods:hover img {
		filter: blur(1px);
	}

	.price {
		font-size: 1rem;
		margin-right: 3px;
	}

	.price_ago {
		text-decoration: line-through;
		font-size: 0.5rem;
		color: #999;

	}

	.title {
		word-break: break-all;
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap;
		font-weight: 700;
		padding: .25rem;
	}

	.icon_cart {
		color: #FF5722;
		float: right;
	}

	@media (max-width: 992px) {

		.goods {
			width: calc(33% - 1rem);
			;
		}

	}

	@media (max-width: 768px) {

		.goods {
			width: calc(50% - 1rem);
			;
		}

	}
</style>

