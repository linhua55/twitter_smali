.class Lbxt;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbxw;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:J
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final c:Lcom/twitter/library/av/playback/AVPlayer;

.field private final d:Lcom/twitter/model/av/AVMedia;

.field private final e:Lcom/twitter/library/av/model/a;

.field private final f:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

.field private final g:Ltv/periscope/android/api/ApiManager;

.field private final h:Lde/greenrobot/event/c;

.field private i:Z

.field private j:J

.field private k:J

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;Lcom/twitter/library/av/model/a;Lcom/twitter/library/api/periscope/PeriscopeCapiModel;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;)V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lbxt;->k:J

    .line 127
    iput-object p1, p0, Lbxt;->c:Lcom/twitter/library/av/playback/AVPlayer;

    .line 128
    iput-object p2, p0, Lbxt;->d:Lcom/twitter/model/av/AVMedia;

    .line 129
    iput-object p3, p0, Lbxt;->e:Lcom/twitter/library/av/model/a;

    .line 130
    iput-object p4, p0, Lbxt;->f:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    .line 131
    iput-object p5, p0, Lbxt;->g:Ltv/periscope/android/api/ApiManager;

    .line 132
    iput-object p6, p0, Lbxt;->h:Lde/greenrobot/event/c;

    .line 134
    iget-object v0, p0, Lbxt;->h:Lde/greenrobot/event/c;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p1}, Lcom/twitter/library/av/playback/AVPlayer;->i()Z

    move-result v0

    iput-boolean v0, p0, Lbxt;->l:Z

    .line 136
    return-void
.end method

.method private a(J)J
    .locals 5

    .prologue
    .line 178
    iget-wide v0, p0, Lbxt;->k:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 179
    const-wide/16 v0, 0x0

    .line 181
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lbxt;->k:J

    sub-long v0, p1, v0

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lbxt;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lbxt;->g:Ltv/periscope/android/api/ApiManager;

    iget-object v1, p0, Lbxt;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2, v2}, Ltv/periscope/android/api/ApiManager;->endWatching(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    .line 249
    :goto_0
    iput-object v3, p0, Lbxt;->a:Ljava/lang/String;

    .line 250
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lbxt;->k:J

    .line 251
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbxt;->b:J

    .line 252
    iput-boolean v2, p0, Lbxt;->n:Z

    .line 253
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbxt;->m:Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/bl;J)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 140
    iget-boolean v0, p0, Lbxt;->i:Z

    if-nez v0, :cond_0

    .line 145
    iput-boolean v6, p0, Lbxt;->i:Z

    .line 146
    iget-object v0, p0, Lbxt;->e:Lcom/twitter/library/av/model/a;

    iget-object v1, p0, Lbxt;->d:Lcom/twitter/model/av/AVMedia;

    invoke-virtual {v0, v1, p1}, Lcom/twitter/library/av/model/a;->a(Lcom/twitter/model/av/AVMedia;Lcom/twitter/library/av/playback/bl;)J

    move-result-wide v0

    iput-wide v0, p0, Lbxt;->j:J

    .line 149
    :cond_0
    iget-boolean v0, p0, Lbxt;->l:Z

    .line 150
    iget-object v1, p0, Lbxt;->c:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/AVPlayer;->i()Z

    move-result v1

    iput-boolean v1, p0, Lbxt;->l:Z

    .line 152
    iget-boolean v1, p0, Lbxt;->l:Z

    if-eqz v1, :cond_2

    .line 156
    if-nez v0, :cond_1

    .line 158
    invoke-direct {p0}, Lbxt;->f()V

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    iget-wide v0, p0, Lbxt;->k:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 162
    iput-wide p2, p0, Lbxt;->k:J

    .line 165
    :cond_3
    invoke-direct {p0, p2, p3}, Lbxt;->a(J)J

    move-result-wide v0

    iget-wide v2, p0, Lbxt;->j:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 166
    iget-object v0, p0, Lbxt;->f:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-virtual {v0}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->g()Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lbxt;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-wide v2, p0, Lbxt;->b:J

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    cmp-long v1, v2, p2

    if-gtz v1, :cond_4

    .line 168
    iget-object v0, p0, Lbxt;->g:Ltv/periscope/android/api/ApiManager;

    iget-object v1, p0, Lbxt;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v7, v7}, Ltv/periscope/android/api/ApiManager;->pingWatching(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    .line 169
    iput-wide p2, p0, Lbxt;->b:J

    goto :goto_0

    .line 170
    :cond_4
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lbxt;->n:Z

    if-nez v1, :cond_1

    .line 171
    iget-object v1, p0, Lbxt;->g:Ltv/periscope/android/api/ApiManager;

    invoke-interface {v1, v0, v6}, Ltv/periscope/android/api/ApiManager;->startWatching(Ljava/lang/String;Z)Ljava/lang/String;

    .line 172
    iput-boolean v6, p0, Lbxt;->n:Z

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lbxt;->h:Lde/greenrobot/event/c;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->c(Ljava/lang/Object;)V

    .line 229
    invoke-direct {p0}, Lbxt;->f()V

    .line 230
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lbxt;->f()V

    .line 239
    return-void
.end method

.method public onEventMainThread(Ltv/periscope/android/event/ApiEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 186
    sget-object v0, Lbxs;->a:[I

    iget-object v1, p1, Ltv/periscope/android/event/ApiEvent;->a:Ltv/periscope/android/event/ApiEvent$Type;

    invoke-virtual {v1}, Ltv/periscope/android/event/ApiEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    iget-boolean v0, p0, Lbxt;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbxt;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lbxt;->g:Ltv/periscope/android/api/ApiManager;

    iget-object v1, p0, Lbxt;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2, v2}, Ltv/periscope/android/api/ApiManager;->endWatching(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    .line 205
    iput-boolean v2, p0, Lbxt;->m:Z

    .line 206
    iput-object v3, p0, Lbxt;->a:Ljava/lang/String;

    .line 207
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lbxt;->k:J

    .line 208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbxt;->b:J

    .line 209
    iput-boolean v2, p0, Lbxt;->n:Z

    .line 211
    :cond_0
    return-void

    .line 188
    :pswitch_0
    invoke-virtual {p1}, Ltv/periscope/android/event/ApiEvent;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p1, Ltv/periscope/android/event/ApiEvent;->d:Ljava/lang/Object;

    check-cast v0, Ltv/periscope/android/api/StartWatchingResponse;

    .line 190
    iget-object v0, v0, Ltv/periscope/android/api/StartWatchingResponse;->session:Ljava/lang/String;

    iput-object v0, p0, Lbxt;->a:Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_1
    iput-object v3, p0, Lbxt;->a:Ljava/lang/String;

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
