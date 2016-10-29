.class Lcbj;
.super Lcbm;
.source "Twttr"

# interfaces
.implements Lcbk;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcbm;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcbi;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcbj;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcbj;->a:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcbj;->b:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcbj;->c:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcbj;->i:Z

    return v0
.end method

.method protected f()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    const-string/jumbo v0, "tweet_view_geo_tag_android_4264"

    .line 184
    invoke-static {v0}, Lcom/twitter/config/c;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcbj;->a:Z

    .line 186
    const-string/jumbo v0, "tweet_header_badging_android_4828"

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "verified_only"

    aput-object v2, v1, v3

    const-string/jumbo v2, "verified_and_protected"

    aput-object v2, v1, v4

    .line 187
    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcbj;->b:Z

    .line 190
    const-string/jumbo v0, "tweet_header_badging_android_4828"

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "protected_only"

    aput-object v2, v1, v3

    const-string/jumbo v2, "verified_and_protected"

    aput-object v2, v1, v4

    .line 191
    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcbj;->c:Z

    .line 194
    iget-boolean v0, p0, Lcbj;->d:Z

    if-nez v0, :cond_0

    .line 196
    const-string/jumbo v0, "reply_icon_change_4851"

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "fill_reply_icon"

    aput-object v2, v1, v3

    const-string/jumbo v2, "fill_reply_icon_no_dms"

    aput-object v2, v1, v4

    const-string/jumbo v2, "fill_reply_icon_last_no_dms"

    aput-object v2, v1, v5

    const-string/jumbo v2, "fill_reply_icon_middle_no_dms"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcbj;->e:Z

    .line 202
    const-string/jumbo v0, "reply_icon_change_4851"

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "fill_reply_icon_last_no_dms"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcbj;->f:Z

    .line 205
    const-string/jumbo v0, "reply_icon_change_4851"

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "fill_reply_icon_middle_no_dms"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcbj;->g:Z

    .line 208
    const-string/jumbo v0, "reply_icon_change_4851"

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "fill_no_dms"

    aput-object v2, v1, v3

    const-string/jumbo v2, "fill_reply_icon_no_dms"

    aput-object v2, v1, v4

    const-string/jumbo v2, "fill_reply_icon_last_no_dms"

    aput-object v2, v1, v5

    const-string/jumbo v2, "fill_reply_icon_middle_no_dms"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcbj;->h:Z

    .line 213
    iput-boolean v4, p0, Lcbj;->d:Z

    .line 216
    :cond_0
    const-string/jumbo v0, "android_self_qt_rt_4499"

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "self_qt_rt"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcbj;->i:Z

    .line 219
    const-string/jumbo v0, "conversations_replace_reply_canoe_android_enabled"

    .line 220
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcbj;->j:Z

    .line 222
    const-string/jumbo v0, "conversations_urt_timeline_android_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcbj;->k:Z

    .line 223
    const-string/jumbo v0, "cards_kernel_show_sensitivity_warning"

    invoke-static {v0, v3}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcbj;->l:Z

    .line 225
    const-string/jumbo v0, "android_tweet_anatomy_rounded_media_view_corners"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcbj;->m:Z

    .line 227
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcbj;->e:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcbj;->f:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcbj;->g:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcbj;->h:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcbj;->j:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcbj;->k:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcbj;->l:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcbj;->m:Z

    return v0
.end method
