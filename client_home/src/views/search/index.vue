<template>
  <div class="page_search">
	<div class="warp">
	  <div class="container">
		<div class="row">
		  <div class="col-12">
			<div class="card_result_search">
			  <div class="title">搜索结果</div>
				<!-- 文章搜索结果 -->
			  <list_result_search
				:list="result_article"
				title="火车资讯"
				source_table="article"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ordinary_users/list', 'get')"
				:list="result_ordinary_users_user_name"
				title="普通用户用户姓名"
				source_table="ordinary_users"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_center/list', 'get')"
				:list="result_ticket_center_train_number"
				title="车票中心火车编号"
				source_table="ticket_center"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_center/list', 'get')"
				:list="result_ticket_center_departure_station"
				title="车票中心出发站"
				source_table="ticket_center"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_center/list', 'get')"
				:list="result_ticket_center_station_along_the_way"
				title="车票中心沿途站"
				source_table="ticket_center"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_center/list', 'get')"
				:list="result_ticket_center_terminus"
				title="车票中心终点站"
				source_table="ticket_center"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_purchase_order/list', 'get')"
				:list="result_ticket_purchase_order_train_number"
				title="购票订单火车编号"
				source_table="ticket_purchase_order"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_purchase_order/list', 'get')"
				:list="result_ticket_purchase_order_departure_station"
				title="购票订单出发站"
				source_table="ticket_purchase_order"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_purchase_order/list', 'get')"
				:list="result_ticket_purchase_order_station_along_the_way"
				title="购票订单沿途站"
				source_table="ticket_purchase_order"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_purchase_order/list', 'get')"
				:list="result_ticket_purchase_order_terminus"
				title="购票订单终点站"
				source_table="ticket_purchase_order"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_refund_record/list', 'get')"
				:list="result_ticket_refund_record_train_number"
				title="退票记录火车编号"
				source_table="ticket_refund_record"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_refund_record/list', 'get')"
				:list="result_ticket_refund_record_departure_station"
				title="退票记录出发站"
				source_table="ticket_refund_record"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_refund_record/list', 'get')"
				:list="result_ticket_refund_record_station_along_the_way"
				title="退票记录沿途站"
				source_table="ticket_refund_record"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_refund_record/list', 'get')"
				:list="result_ticket_refund_record_terminus"
				title="退票记录终点站"
				source_table="ticket_refund_record"
			  ></list_result_search>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </div>
</template>

<script>
import mixin from "../../mixins/page.js";
import list_result_search from "../../components/diy/list_result_search.vue";

export default {
  mixins: [mixin],
  data() {
	return {
	  "query": {
		word: "",
	  },
	  "result_article": [],
			"result_ordinary_users_user_name":[],
			"result_ticket_center_train_number":[],
			"result_ticket_center_departure_station":[],
			"result_ticket_center_station_along_the_way":[],
			"result_ticket_center_terminus":[],
			"result_ticket_purchase_order_train_number":[],
			"result_ticket_purchase_order_departure_station":[],
			"result_ticket_purchase_order_station_along_the_way":[],
			"result_ticket_purchase_order_terminus":[],
			"result_ticket_refund_record_train_number":[],
			"result_ticket_refund_record_departure_station":[],
			"result_ticket_refund_record_station_along_the_way":[],
			"result_ticket_refund_record_terminus":[],
	};
  },
  methods: {
	/**
	 * 获取文章
	 */
	get_article() {
	  this.$get("~/api/article/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_article = json.result.list;
		}
	  });
	},
	/**
	 * 获取user_name
	 */
	get_ordinary_users_user_name(){
		this.$get("~/api/ordinary_users/get_list?like=0", { page: 1, size: 10, "user_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_ordinary_users_user_name = json.result.list;
			result_ordinary_users_user_name.map(o => o.title = o['user_name'])
	  			this.result_ordinary_users_user_name = result_ordinary_users_user_name
		 	}
		});
	},
	/**
	 * 获取train_number
	 */
	get_ticket_center_train_number(){
		this.$get("~/api/ticket_center/get_list?like=0", { page: 1, size: 10, "train_number": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_center_train_number = json.result.list;
			result_ticket_center_train_number.map(o => o.title = o['train_number'])
	  			this.result_ticket_center_train_number = result_ticket_center_train_number
		 	}
		});
	},
	/**
	 * 获取departure_station
	 */
	get_ticket_center_departure_station(){
		this.$get("~/api/ticket_center/get_list?like=0", { page: 1, size: 10, "departure_station": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_center_departure_station = json.result.list;
			result_ticket_center_departure_station.map(o => o.title = o['departure_station'])
	  			this.result_ticket_center_departure_station = result_ticket_center_departure_station
		 	}
		});
	},
	/**
	 * 获取station_along_the_way
	 */
	get_ticket_center_station_along_the_way(){
		this.$get("~/api/ticket_center/get_list?like=0", { page: 1, size: 10, "station_along_the_way": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_center_station_along_the_way = json.result.list;
			result_ticket_center_station_along_the_way.map(o => o.title = o['station_along_the_way'])
	  			this.result_ticket_center_station_along_the_way = result_ticket_center_station_along_the_way
		 	}
		});
	},
	/**
	 * 获取terminus
	 */
	get_ticket_center_terminus(){
		this.$get("~/api/ticket_center/get_list?like=0", { page: 1, size: 10, "terminus": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_center_terminus = json.result.list;
			result_ticket_center_terminus.map(o => o.title = o['terminus'])
	  			this.result_ticket_center_terminus = result_ticket_center_terminus
		 	}
		});
	},
	/**
	 * 获取train_number
	 */
	get_ticket_purchase_order_train_number(){
		this.$get("~/api/ticket_purchase_order/get_list?like=0", { page: 1, size: 10, "train_number": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_purchase_order_train_number = json.result.list;
			result_ticket_purchase_order_train_number.map(o => o.title = o['train_number'])
	  			this.result_ticket_purchase_order_train_number = result_ticket_purchase_order_train_number
		 	}
		});
	},
	/**
	 * 获取departure_station
	 */
	get_ticket_purchase_order_departure_station(){
		this.$get("~/api/ticket_purchase_order/get_list?like=0", { page: 1, size: 10, "departure_station": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_purchase_order_departure_station = json.result.list;
			result_ticket_purchase_order_departure_station.map(o => o.title = o['departure_station'])
	  			this.result_ticket_purchase_order_departure_station = result_ticket_purchase_order_departure_station
		 	}
		});
	},
	/**
	 * 获取station_along_the_way
	 */
	get_ticket_purchase_order_station_along_the_way(){
		this.$get("~/api/ticket_purchase_order/get_list?like=0", { page: 1, size: 10, "station_along_the_way": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_purchase_order_station_along_the_way = json.result.list;
			result_ticket_purchase_order_station_along_the_way.map(o => o.title = o['station_along_the_way'])
	  			this.result_ticket_purchase_order_station_along_the_way = result_ticket_purchase_order_station_along_the_way
		 	}
		});
	},
	/**
	 * 获取terminus
	 */
	get_ticket_purchase_order_terminus(){
		this.$get("~/api/ticket_purchase_order/get_list?like=0", { page: 1, size: 10, "terminus": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_purchase_order_terminus = json.result.list;
			result_ticket_purchase_order_terminus.map(o => o.title = o['terminus'])
	  			this.result_ticket_purchase_order_terminus = result_ticket_purchase_order_terminus
		 	}
		});
	},
	/**
	 * 获取train_number
	 */
	get_ticket_refund_record_train_number(){
		this.$get("~/api/ticket_refund_record/get_list?like=0", { page: 1, size: 10, "train_number": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_refund_record_train_number = json.result.list;
			result_ticket_refund_record_train_number.map(o => o.title = o['train_number'])
	  			this.result_ticket_refund_record_train_number = result_ticket_refund_record_train_number
		 	}
		});
	},
	/**
	 * 获取departure_station
	 */
	get_ticket_refund_record_departure_station(){
		this.$get("~/api/ticket_refund_record/get_list?like=0", { page: 1, size: 10, "departure_station": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_refund_record_departure_station = json.result.list;
			result_ticket_refund_record_departure_station.map(o => o.title = o['departure_station'])
	  			this.result_ticket_refund_record_departure_station = result_ticket_refund_record_departure_station
		 	}
		});
	},
	/**
	 * 获取station_along_the_way
	 */
	get_ticket_refund_record_station_along_the_way(){
		this.$get("~/api/ticket_refund_record/get_list?like=0", { page: 1, size: 10, "station_along_the_way": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_refund_record_station_along_the_way = json.result.list;
			result_ticket_refund_record_station_along_the_way.map(o => o.title = o['station_along_the_way'])
	  			this.result_ticket_refund_record_station_along_the_way = result_ticket_refund_record_station_along_the_way
		 	}
		});
	},
	/**
	 * 获取terminus
	 */
	get_ticket_refund_record_terminus(){
		this.$get("~/api/ticket_refund_record/get_list?like=0", { page: 1, size: 10, "terminus": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_refund_record_terminus = json.result.list;
			result_ticket_refund_record_terminus.map(o => o.title = o['terminus'])
	  			this.result_ticket_refund_record_terminus = result_ticket_refund_record_terminus
		 	}
		});
	},

  },
  components: { list_result_search },
	created(){
    this.query.word = this.$route.query.word || "";
  },
  mounted() {
	this.get_article();
		this.get_ordinary_users_user_name();
		this.get_ticket_center_train_number();
		this.get_ticket_center_departure_station();
		this.get_ticket_center_station_along_the_way();
		this.get_ticket_center_terminus();
		this.get_ticket_purchase_order_train_number();
		this.get_ticket_purchase_order_departure_station();
		this.get_ticket_purchase_order_station_along_the_way();
		this.get_ticket_purchase_order_terminus();
		this.get_ticket_refund_record_train_number();
		this.get_ticket_refund_record_departure_station();
		this.get_ticket_refund_record_station_along_the_way();
		this.get_ticket_refund_record_terminus();
  },
  watch: {
	$route() {
	  $.push(this.query, this.$route.query);
	  this.get_article();
	  this.get_ordinary_users_user_name();
	  this.get_ticket_center_train_number();
	  this.get_ticket_center_departure_station();
	  this.get_ticket_center_station_along_the_way();
	  this.get_ticket_center_terminus();
	  this.get_ticket_purchase_order_train_number();
	  this.get_ticket_purchase_order_departure_station();
	  this.get_ticket_purchase_order_station_along_the_way();
	  this.get_ticket_purchase_order_terminus();
	  this.get_ticket_refund_record_train_number();
	  this.get_ticket_refund_record_departure_station();
	  this.get_ticket_refund_record_station_along_the_way();
	  this.get_ticket_refund_record_terminus();
	},
  },
};
</script>

<style scoped>
.card_search {
  text-align: center;
}
.card_result_search>.title {
  text-align: center;
  padding: 10px 0;
}
</style>
