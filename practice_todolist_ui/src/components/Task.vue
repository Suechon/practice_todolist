
<template>
  <v-col cols="12">
    <v-card class="mx-auto" width="344">
      {{ copyTask }}<br />
      <br />
      {{ task }}
      <v-row class="mr-3">
        <v-card-subtitle class="ml-3">
          {{ this.id }}
        </v-card-subtitle>
        <v-spacer></v-spacer><TaskMenu :task="task" @edit="edit" @delete="del"
      /></v-row>

      <v-card-title class="pt-0">
        <v-checkbox
          v-model="copyTask.status"
          @change="updateStatus($event)"
          class="mb-4"
          color="primary"
          hide-details
        ></v-checkbox>
        {{ this.title }}
      </v-card-title>

      <v-card-subtitle>
        Start: {{ this.startDate }} <br />Limit: {{ this.limitDate }}
      </v-card-subtitle>
      <v-row class="ml-3"> </v-row>
      <v-card-actions>
        <v-btn color="orange lighten-2" text> Memo </v-btn>

        <v-spacer></v-spacer>

        <v-btn icon @click="show = !show">
          <v-icon>{{ show ? "mdi-chevron-up" : "mdi-chevron-down" }}</v-icon>
        </v-btn>
      </v-card-actions>

      <v-expand-transition>
        <div v-show="show">
          <v-divider></v-divider>

          <v-card-text>
            {{ memo }}
          </v-card-text>
        </div>
      </v-expand-transition>
    </v-card>
  </v-col>
</template>

<script>
import TaskMenu from "./TaskMenu.vue";
export default {
  props: {
    task: {
      type: Object,
      require: false,
      default: () => {},
    },
  },
  components: { TaskMenu },
  data() {
    return {
      show: false,
      copyTask: {},
    };
  },

  computed: {
    id() {
      return this.task.id;
    },
    title() {
      return this.task.title;
    },
    startDate() {
      return this.task.start;
    },
    limitDate() {
      return this.task.limit;
    },
    memo() {
      return this.task.memo;
    },
  },

  methods: {
    edit(task) {
      this.$emit("edit", task);
    },
    del() {
      this.$emit("delete");
    },
    updateStatus() {
      this.$emit("updateStatus", this.copyTask);
    },
  },
};
</script>
