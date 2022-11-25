<template>
    <div>
      <div class="hgl-bg-active" v-if="isActive" @click="isExitOnOutside ? $emit('closeButtonClick', true) : null"></div>
      <div class="hgl-wrapper" :class="{active: isActive}">
        <div class="out-text">
          <slot></slot>
        </div>
        <div class="hgl-box" :class="[position, boxClassCustom]" v-if="isActive">
          <div class="hgl-arrow" :class="[position]"></div>
          <div>{{label}}</div>
          <div class="hgl-row-btn">
            <div>
              <a href="javascript:void(0)" class="hgl-close-btn" @click="$emit('closeButtonClick', true)"
                 v-if="isCloseLabel">
                {{closeLabel}}
              </a>
            </div>
            <div>
              <a href="javascript:void(0)" class="hgl-next-btn" @click="$emit('nextButtonClick', true)">
                {{nextLabel}}
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </template>
  <script>
  export default {
    name: "HighlightTag",
    props: {
      isActive: {
        type: Boolean,
        default: false
      },
      isExitOnOutside: {
        type: Boolean,
        default: true
      },
      isCloseLabel: {
        type: Boolean,
        default: false
      },
      label: {
        type: String,
        default: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
      },
      nextLabel: {
        type: String,
        default: "Next"
      },
      closeLabel: {
        type: String,
        default: "Close"
      },
      boxClassCustom: {
        type: String,
        default: ''
      },
      position: {
        type: String,
        default: 'left'
      }
    }
  
  }
  </script>
  <style>
  .hgl-bg-active {
    box-sizing: content-box;
    z-index: 999999;
    background-color: #000;
    inset: 0;
    position: fixed;
    opacity: 0.8;
  }
  .hgl-wrapper {
    position: relative;
  }
  .hgl-wrapper.active {
    z-index: 10000000;
  }
  .hgl-wrapper.active .out-text > * {
    color: #000!important;
  }
  .hgl-box {
    position: absolute;
    left: 5px;
    top: 45px;
    padding: 10px;
    min-width: 225px;
    max-width: 275px;
    background-color: #1B499F;
    color: white;
    text-align: left;
    border-radius: 5px;
    box-shadow: 0 1px 10px rgb(0 0 0 / 40%);
    transition: opacity 0.1s ease-out;
  }
  .hgl-box.right {
    left: unset;
    right: 5px;
  }
  .hgl-box.top {
    top: unset;
    bottom: 45px;
  }
  .hgl-arrow {
    border: 9px solid #1b499f;
    content: "";
    position: absolute;
    top: -18px;
    border-color: transparent transparent #1b499f;
  }
  .hgl-arrow.right {
    right: 10px;
  }
  .hgl-arrow.top {
    top: unset;
    bottom: -18px;
    border-color: #1b499f transparent transparent;
  }
  .hgl-row-btn {
    margin-top: 20px;
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  .hgl-close-btn {
    color: #F2C94C;
    text-decoration: none;
  }
  .hgl-next-btn {
    color: #F2C94C;
    text-decoration: none;
  }
  </style>