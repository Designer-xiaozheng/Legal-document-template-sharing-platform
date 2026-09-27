<template>
	<div class="diy_home diy_list diy_ticket_center" id="diy_ticket_center_list">
		<!-- 列表 -->
		<div class="diy_view_list list list-x" v-if="show">
			<router-link class="diy_card goods diy_list_box_wrap" v-for="(o, i) in list" :key="i"
				:to="'/ticket_center/details?ticket_center_id=' + o['ticket_center_id']">
				<!-- 图片 -->
				<div class="diy_list_img_box" v-if="imgList.length" >
					<div class="diy_row" v-for="(item,index) in imgList" :key="item+index" v-show="$check_field('get',item.name,'/ticket_center/details') && +item.is_img_list">
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
						<div class="diy_row" :class="{[item.name]:true}" v-if="$check_field('get',item.name,'/ticket_center/details') && +item.is_img_list">
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
					<th class="diy_title" v-if="$check_field('get','remaining_seats')">剩余座位
					</th>
					<th class="diy_title" v-if="$check_field('get','cover_picture')">封面图
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
					<td class="diy_field diy_datetime" v-if="$check_field('get','departure_time')">
						<span>
							{{ $toTime(o["departure_time"] ,"yyyy-MM-dd hh:mm:ss") }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','seat_type')">
						<span>
							{{ o["seat_type"] }}
						</span>
					</td>
					<td class="diy_field diy_number" v-if="$check_field('get','seat_price')">
						<span>
							{{ o["seat_price"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','remaining_seats')">
						<span>
							{{ o["remaining_seats"] }}
						</span>
					</td>
					<td class="diy_field" v-if="$check_field('get','cover_picture')">
						<img class="diy_img" :src="o['cover_picture']" />
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
						{
							title: "封面图",
							name: "cover_picture",
							type: "图片",
							is_img_list: "1"
						},
						],
						itemList: [
								{
									title: "火车编号",
									name: "train_number",
									type: "文本",
									is_img_list: "1"
								},
								{
									title: "出发站",
									name: "departure_station",
									type: "文本",
									is_img_list: "1"
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
									is_img_list: "1"
								},
								{
									title: "发车时间",
									name: "departure_time",
									type: "日长",
									is_img_list: "0"
								},
								{
									title: "座位类型",
									name: "seat_type",
									type: "下拉",
									is_img_list: "0"
								},
								{
									title: "座位价格",
									name: "seat_price",
									type: "数字",
									is_img_list: "0"
								},
								{
									title: "剩余座位",
									name: "remaining_seats",
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
			};
		},
		methods: {
		},
		created() {
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

