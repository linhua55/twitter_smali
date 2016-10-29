.class public Ltv/periscope/android/ui/broadcast/ag;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field a:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final b:Ltv/periscope/android/ui/broadcast/ak;

.field private final c:Ltv/periscope/android/api/ApiManager;

.field private final d:Ltv/periscope/android/ui/broadcast/bm;

.field private e:Ljava/lang/String;

.field private f:Ltv/periscope/android/player/PlayMode;

.field private g:Ltv/periscope/android/ui/broadcast/aj;

.field private h:Ltv/periscope/android/ui/chat/y;

.field private i:Ltv/periscope/android/ui/broadcast/ai;

.field private j:Z


# direct methods
.method public constructor <init>(Ltv/periscope/android/api/ApiManager;Ltv/periscope/android/ui/broadcast/bm;Ltv/periscope/android/player/PlayMode;Landroid/app/Activity;Ltv/periscope/android/ui/broadcast/ai;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ag;->c:Ltv/periscope/android/api/ApiManager;

    .line 71
    iput-object p2, p0, Ltv/periscope/android/ui/broadcast/ag;->d:Ltv/periscope/android/ui/broadcast/bm;

    .line 72
    iput-object p3, p0, Ltv/periscope/android/ui/broadcast/ag;->f:Ltv/periscope/android/player/PlayMode;

    .line 73
    iput-object p5, p0, Ltv/periscope/android/ui/broadcast/ag;->i:Ltv/periscope/android/ui/broadcast/ai;

    .line 74
    new-instance v0, Ltv/periscope/android/ui/broadcast/ak;

    const/4 v1, 0x0

    invoke-direct {v0, p4, v1}, Ltv/periscope/android/ui/broadcast/ak;-><init>(Landroid/app/Activity;Ltv/periscope/android/ui/broadcast/aj;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->b:Ltv/periscope/android/ui/broadcast/ak;

    .line 75
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcast/ag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ag;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/player/PlayMode;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->f:Ltv/periscope/android/player/PlayMode;

    return-object v0
.end method

.method static synthetic b(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/ui/broadcast/bm;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->d:Ltv/periscope/android/ui/broadcast/bm;

    return-object v0
.end method

.method static synthetic c(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/ui/chat/y;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->h:Ltv/periscope/android/ui/chat/y;

    return-object v0
.end method

.method static synthetic d(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/api/ApiManager;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->c:Ltv/periscope/android/api/ApiManager;

    return-object v0
.end method

.method static synthetic e(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/ui/broadcast/aj;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->b:Ltv/periscope/android/ui/broadcast/ak;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ak;->removeMessages(I)V

    .line 87
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->b:Ltv/periscope/android/ui/broadcast/ak;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ak;->removeMessages(I)V

    .line 88
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 236
    invoke-static {p1}, Ldmf;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ag;->a:Z

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->i:Ltv/periscope/android/ui/broadcast/ai;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->i:Ltv/periscope/android/ui/broadcast/ai;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/ai;->a()V

    .line 241
    :cond_0
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ag;->h()V

    .line 257
    :cond_1
    :goto_0
    return-void

    .line 251
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->i:Ltv/periscope/android/ui/broadcast/ai;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->i:Ltv/periscope/android/ui/broadcast/ai;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/ai;->b()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ltv/periscope/android/ui/broadcast/aj;

    invoke-direct {v0, p0}, Ltv/periscope/android/ui/broadcast/aj;-><init>(Ltv/periscope/android/ui/broadcast/ag;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    .line 107
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    iput-object p1, v0, Ltv/periscope/android/ui/broadcast/aj;->a:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->b:Ltv/periscope/android/ui/broadcast/ak;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ak;->a(Ltv/periscope/android/ui/broadcast/aj;)V

    .line 109
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->c:Ltv/periscope/android/api/ApiManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ltv/periscope/android/api/ApiManager;->getAccessVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->c:Ltv/periscope/android/api/ApiManager;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    iget-object v1, v1, Ltv/periscope/android/ui/broadcast/aj;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ltv/periscope/android/api/ApiManager;->getAccessVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v1, 0x7b

    .line 154
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    invoke-virtual {v0, p1, p2}, Ltv/periscope/android/ui/broadcast/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->b:Ltv/periscope/android/ui/broadcast/ak;

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ak;->removeMessages(I)V

    .line 158
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->b:Ltv/periscope/android/ui/broadcast/ak;

    sget-wide v2, Ltv/periscope/android/api/Constants;->API_PING_INTERVAL_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Ltv/periscope/android/ui/broadcast/ak;->a(IJ)Z

    .line 159
    return-void
.end method

.method public a(Ltv/periscope/android/ui/chat/y;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ag;->h:Ltv/periscope/android/ui/chat/y;

    .line 92
    return-void
.end method

.method public a(Ltv/periscope/model/ac;Ltv/periscope/model/o;Z)V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->c:Ltv/periscope/android/api/ApiManager;

    invoke-virtual {p2}, Ltv/periscope/model/o;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ltv/periscope/model/o;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ltv/periscope/android/api/ApiManager;->getBroadcastViewers(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    iget-object v0, v0, Ltv/periscope/android/ui/broadcast/aj;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    iget-object v0, v0, Ltv/periscope/android/ui/broadcast/aj;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ltv/periscope/model/ac;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    invoke-virtual {p1}, Ltv/periscope/model/ac;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/periscope/android/ui/broadcast/aj;->e:Ljava/lang/String;

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ag;->a(Z)V

    .line 132
    :cond_1
    invoke-virtual {p1}, Ltv/periscope/model/ac;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    iget-object v1, v1, Ltv/periscope/android/ui/broadcast/aj;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    :cond_2
    :goto_0
    return-void

    .line 134
    :cond_3
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    iget-object v0, v0, Ltv/periscope/android/ui/broadcast/aj;->d:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 135
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    invoke-virtual {p1}, Ltv/periscope/model/ac;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/periscope/android/ui/broadcast/aj;->d:Ljava/lang/String;

    .line 136
    if-eqz p3, :cond_2

    .line 138
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ag;->b()V

    goto :goto_0

    .line 142
    :cond_4
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    invoke-virtual {p1}, Ltv/periscope/model/ac;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/periscope/android/ui/broadcast/aj;->d:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ag;->b()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/aj;->a(Z)V

    .line 118
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    iget-object v1, v1, Ltv/periscope/android/ui/broadcast/aj;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/aj;->a(Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/aj;->b(Ljava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->b:Ltv/periscope/android/ui/broadcast/ak;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ak;->removeMessages(I)V

    .line 163
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/aj;->b()V

    .line 166
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ag;->j:Z

    .line 198
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->b:Ltv/periscope/android/ui/broadcast/ak;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ak;->removeMessages(I)V

    .line 199
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ag;->a:Z

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ag;->h()V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ag;->d()V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ag;->a:Z

    .line 211
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ag;->h()V

    .line 212
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 215
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ag;->a:Z

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ag;->a:Z

    .line 219
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ag;->b:Ltv/periscope/android/ui/broadcast/ak;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ak;->removeMessages(I)V

    .line 221
    :cond_0
    return-void
.end method

.method h()V
    .locals 6

    .prologue
    const/16 v0, 0x7c

    .line 224
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ag;->b:Ltv/periscope/android/ui/broadcast/ak;

    invoke-virtual {v1, v0}, Ltv/periscope/android/ui/broadcast/ak;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    invoke-static {}, Ldmf;->a()J

    move-result-wide v2

    .line 226
    const-string/jumbo v1, "BLCM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Repeating /accessChat in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-boolean v1, p0, Ltv/periscope/android/ui/broadcast/ag;->j:Z

    if-eqz v1, :cond_1

    .line 229
    :goto_0
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ag;->b:Ltv/periscope/android/ui/broadcast/ak;

    invoke-virtual {v1, v0, v2, v3}, Ltv/periscope/android/ui/broadcast/ak;->a(IJ)Z

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ag;->j:Z

    .line 232
    :cond_0
    return-void

    .line 228
    :cond_1
    const/16 v0, 0x7d

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    const-string/jumbo v1, "{ BroadcastLifeCyleManager:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "{ mCurrentLifeCycle:\n"

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    if-nez v1, :cond_0

    .line 185
    const-string/jumbo v1, " null \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :goto_0
    const-string/jumbo v1, " } \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " } \n"

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :cond_0
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ag;->g:Ltv/periscope/android/ui/broadcast/aj;

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/aj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
