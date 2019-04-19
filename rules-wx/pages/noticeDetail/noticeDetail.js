// noticeDetail.js
var util = require('../../utils/util.js')
Page({

  /**
   * 页面的初始数据
   */
  data: {
    notice: {},
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var that = this;
    wx.showNavigationBarLoading();
    var noticeId = parseInt(options.noticeId);
    wx.request({
      url: util.getHost() + 'notice/getNotice',
      data: { noticeId: noticeId },
      method: 'get',
      dataType: 'text',
      success: function (res) {
        wx.hideNavigationBarLoading();
        var notice = that.parseNotice(JSON.parse(res.data));
        var pictureUrl = notice.picture;
        if (pictureUrl!=undefined && (!pictureUrl.startsWith(util.getHost()))) {
          pictureUrl = util.getHost() + pictureUrl;
        }
        notice.picture = pictureUrl;
        that.setData({
          notice: notice,
        })
      },
      fail: function (res) { },
      complete: function (res) { 
        wx.hideNavigationBarLoading();
      },
    })
  },

  /**
   * 普通函数，将notice对象解析成需要显示的notice对象
   */
  parseNotice: function  (notice) {
    notice.picture = notice.picture == null ? undefined : notice.picture;
    notice.source = notice.source == null ? undefined : notice.source;
    notice.submitTime = util.getDate(new Date(notice.submitTime));
    return notice;
  },

})