.class public Ltv/periscope/android/ui/broadcast/bb;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field a:Ltv/periscope/android/ui/chat/ae;

.field private final b:Z

.field private c:Ltv/periscope/android/chat/d;

.field private d:Ltv/periscope/chatman/h;

.field private e:Ltv/periscope/android/player/PlayMode;

.field private f:Ltv/periscope/android/ui/chat/y;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lde/greenrobot/event/c;

.field private i:Ltv/periscope/android/chat/f;

.field private j:Ltv/periscope/model/u;

.field private k:Ltv/periscope/android/chat/c;

.field private l:Ltv/periscope/android/ui/broadcast/moderator/a;

.field private m:Ltv/periscope/android/ui/broadcast/bd;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ltv/periscope/android/player/PlayMode;ZLtv/periscope/android/ui/broadcast/bd;Ltv/periscope/chatman/h;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->g:Ljava/lang/ref/WeakReference;

    .line 95
    new-instance v0, Lde/greenrobot/event/c;

    invoke-direct {v0}, Lde/greenrobot/event/c;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->h:Lde/greenrobot/event/c;

    .line 96
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->h:Lde/greenrobot/event/c;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    .line 97
    invoke-static {p2}, Ltv/periscope/android/chat/d;->a(Ljava/lang/String;)Ltv/periscope/android/chat/d;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->c:Ltv/periscope/android/chat/d;

    .line 98
    iput-object p3, p0, Ltv/periscope/android/ui/broadcast/bb;->e:Ltv/periscope/android/player/PlayMode;

    .line 99
    new-instance v0, Ltv/periscope/android/ui/chat/ap;

    invoke-direct {v0}, Ltv/periscope/android/ui/chat/ap;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->f:Ltv/periscope/android/ui/chat/y;

    .line 100
    iput-boolean p4, p0, Ltv/periscope/android/ui/broadcast/bb;->b:Z

    .line 101
    iput-object p5, p0, Ltv/periscope/android/ui/broadcast/bb;->m:Ltv/periscope/android/ui/broadcast/bd;

    .line 102
    iput-object p6, p0, Ltv/periscope/android/ui/broadcast/bb;->d:Ltv/periscope/chatman/h;

    .line 103
    return-void
.end method

.method private h()Ltv/periscope/android/ui/chat/y;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->f:Ltv/periscope/android/ui/chat/y;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    invoke-interface {v0}, Ltv/periscope/android/chat/c;->d()V

    .line 153
    :cond_0
    return-void
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/chat/c;->a(J)V

    .line 290
    :cond_0
    return-void
.end method

.method a(Ltv/periscope/android/chat/ChatRoomEvent;)V
    .locals 2

    .prologue
    .line 220
    sget-object v0, Ltv/periscope/android/ui/broadcast/bc;->a:[I

    invoke-virtual {p1}, Ltv/periscope/android/chat/ChatRoomEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 222
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->f:Ltv/periscope/android/ui/chat/y;

    invoke-interface {v0}, Ltv/periscope/android/ui/chat/y;->e()V

    goto :goto_0

    .line 226
    :pswitch_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->f:Ltv/periscope/android/ui/chat/y;

    invoke-interface {v0}, Ltv/periscope/android/ui/chat/y;->f()V

    goto :goto_0

    .line 230
    :pswitch_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->f:Ltv/periscope/android/ui/chat/y;

    invoke-interface {v0}, Ltv/periscope/android/ui/chat/y;->g()V

    goto :goto_0

    .line 234
    :pswitch_3
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->f:Ltv/periscope/android/ui/chat/y;

    invoke-interface {v0}, Ltv/periscope/android/ui/chat/y;->h()V

    .line 235
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->m:Ltv/periscope/android/ui/broadcast/bd;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->m:Ltv/periscope/android/ui/broadcast/bd;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/bd;->n()V

    goto :goto_0

    .line 242
    :pswitch_4
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->m:Ltv/periscope/android/ui/broadcast/bd;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->m:Ltv/periscope/android/ui/broadcast/bd;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/bd;->l()V

    goto :goto_0

    .line 249
    :pswitch_5
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->m:Ltv/periscope/android/ui/broadcast/bd;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->m:Ltv/periscope/android/ui/broadcast/bd;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/bd;->m()V

    goto :goto_0

    .line 256
    :pswitch_6
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->m:Ltv/periscope/android/ui/broadcast/bd;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->m:Ltv/periscope/android/ui/broadcast/bd;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/bd;->c()V

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Ltv/periscope/android/data/f;Ltv/periscope/android/data/b;ZLtv/periscope/android/ui/chat/ai;Ltv/periscope/android/ui/chat/ag;Ltv/periscope/android/ui/chat/ah;Ltv/periscope/android/ui/chat/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ltv/periscope/android/ui/chat/ae;

    invoke-direct {v0, p1, p2, p3, p8}, Ltv/periscope/android/ui/chat/ae;-><init>(Ltv/periscope/android/data/f;Ltv/periscope/android/data/b;ZLjava/lang/String;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->a:Ltv/periscope/android/ui/chat/ae;

    .line 134
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->a:Ltv/periscope/android/ui/chat/ae;

    invoke-virtual {v0, p4}, Ltv/periscope/android/ui/chat/ae;->a(Ltv/periscope/android/ui/chat/ai;)V

    .line 135
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->a:Ltv/periscope/android/ui/chat/ae;

    invoke-virtual {v0, p5}, Ltv/periscope/android/ui/chat/ae;->a(Ltv/periscope/android/ui/chat/ag;)V

    .line 136
    if-eqz p6, :cond_1

    .line 137
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->a:Ltv/periscope/android/ui/chat/ae;

    invoke-virtual {v0, p6}, Ltv/periscope/android/ui/chat/ae;->a(Ltv/periscope/android/ui/chat/ah;)V

    .line 142
    :goto_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->h:Lde/greenrobot/event/c;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bb;->a:Ltv/periscope/android/ui/chat/ae;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    .line 144
    if-eqz p7, :cond_0

    .line 145
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->a:Ltv/periscope/android/ui/chat/ae;

    invoke-virtual {p7, v0}, Ltv/periscope/android/ui/chat/b;->a(Ltv/periscope/android/ui/chat/ae;)V

    .line 147
    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bb;->a:Ltv/periscope/android/ui/chat/ae;

    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/bb;->h()Ltv/periscope/android/ui/chat/y;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/chat/ah;

    invoke-virtual {v1, v0}, Ltv/periscope/android/ui/chat/ae;->a(Ltv/periscope/android/ui/chat/ah;)V

    goto :goto_0
.end method

.method public a(Ltv/periscope/android/data/f;Ltv/periscope/android/player/e;Ltv/periscope/android/chat/g;Ltv/periscope/android/chat/i;Z)V
    .locals 8

    .prologue
    .line 365
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    invoke-interface {v0}, Ltv/periscope/android/chat/c;->a()V

    .line 368
    :cond_0
    sget-object v0, Ltv/periscope/android/ui/broadcast/bc;->b:[I

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bb;->e:Ltv/periscope/android/player/PlayMode;

    invoke-virtual {v1}, Ltv/periscope/android/player/PlayMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 379
    new-instance v0, Ltv/periscope/android/chat/q;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bb;->h:Lde/greenrobot/event/c;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/bb;->c:Ltv/periscope/android/chat/d;

    iget-boolean v7, p0, Ltv/periscope/android/ui/broadcast/bb;->b:Z

    move-object v2, p1

    move-object v4, p2

    move v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Ltv/periscope/android/chat/q;-><init>(Lde/greenrobot/event/c;Ltv/periscope/android/data/f;Ltv/periscope/android/chat/d;Ltv/periscope/android/player/e;ZLtv/periscope/android/chat/i;Z)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    .line 381
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    invoke-interface {v0}, Ltv/periscope/android/chat/c;->b()V

    .line 385
    :goto_0
    return-void

    .line 370
    :pswitch_0
    new-instance v0, Ltv/periscope/android/chat/k;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bb;->h:Lde/greenrobot/event/c;

    iget-boolean v6, p0, Ltv/periscope/android/ui/broadcast/bb;->b:Z

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Ltv/periscope/android/chat/k;-><init>(Lde/greenrobot/event/c;Ltv/periscope/android/data/f;Ltv/periscope/android/player/e;Ltv/periscope/android/chat/g;Ltv/periscope/android/chat/i;Z)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    .line 372
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    invoke-interface {v0}, Ltv/periscope/android/chat/c;->b()V

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method a(Ltv/periscope/android/ui/broadcast/moderator/a;)V
    .locals 2

    .prologue
    .line 179
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/bb;->l:Ltv/periscope/android/ui/broadcast/moderator/a;

    .line 180
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->l:Ltv/periscope/android/ui/broadcast/moderator/a;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->h:Lde/greenrobot/event/c;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bb;->l:Ltv/periscope/android/ui/broadcast/moderator/a;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    .line 183
    :cond_0
    return-void
.end method

.method public a(Ltv/periscope/android/ui/chat/y;)V
    .locals 2

    .prologue
    .line 122
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/bb;->f:Ltv/periscope/android/ui/chat/y;

    .line 123
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->f:Ltv/periscope/android/ui/chat/y;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bb;->e:Ltv/periscope/android/player/PlayMode;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/chat/y;->a(Ltv/periscope/android/player/PlayMode;)V

    .line 124
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->f:Ltv/periscope/android/ui/chat/y;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bb;->c:Ltv/periscope/android/chat/d;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/chat/y;->a(Ltv/periscope/android/chat/d;)V

    .line 125
    return-void
.end method

.method public a(Ltv/periscope/model/StreamType;Lretrofit/RestAdapter$LogLevel;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 266
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bb;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const-string/jumbo v0, "CM"

    const-string/jumbo v1, "Already joined on current channel, closing."

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->c:Ltv/periscope/android/chat/d;

    invoke-virtual {v0}, Ltv/periscope/android/chat/d;->a()V

    .line 271
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->j:Ltv/periscope/model/u;

    if-eqz v0, :cond_1

    .line 272
    new-instance v0, Ltv/periscope/android/chat/f;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bb;->j:Ltv/periscope/model/u;

    invoke-virtual {v1}, Ltv/periscope/model/u;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltv/periscope/android/chat/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->i:Ltv/periscope/android/chat/f;

    .line 273
    const-string/jumbo v0, "CM"

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bb;->i:Ltv/periscope/android/chat/f;

    invoke-virtual {v1}, Ltv/periscope/android/chat/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->f:Ltv/periscope/android/ui/chat/y;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bb;->i:Ltv/periscope/android/chat/f;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/chat/y;->a(Ltv/periscope/android/chat/f;)V

    .line 277
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->c:Ltv/periscope/android/chat/d;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bb;->h:Lde/greenrobot/event/c;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bb;->j:Ltv/periscope/model/u;

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/bb;->e:Ltv/periscope/android/player/PlayMode;

    iget-object v6, p0, Ltv/periscope/android/ui/broadcast/bb;->d:Ltv/periscope/chatman/h;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Ltv/periscope/android/chat/d;->a(Lde/greenrobot/event/c;Ltv/periscope/model/u;Ltv/periscope/model/StreamType;Ltv/periscope/android/player/PlayMode;Lretrofit/RestAdapter$LogLevel;Ltv/periscope/chatman/h;)V

    .line 279
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bb;->i:Ltv/periscope/android/chat/f;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bb;->j:Ltv/periscope/model/u;

    invoke-virtual {v2}, Ltv/periscope/model/u;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/bb;->j:Ltv/periscope/model/u;

    .line 281
    invoke-virtual {v3}, Ltv/periscope/model/u;->e()Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-interface {v0, v1, v2, p3, v3}, Ltv/periscope/android/chat/c;->a(Ltv/periscope/android/chat/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_1
    return-void
.end method

.method public a(Ltv/periscope/model/StreamType;Ltv/periscope/model/u;)V
    .locals 1

    .prologue
    .line 167
    iput-object p2, p0, Ltv/periscope/android/ui/broadcast/bb;->j:Ltv/periscope/model/u;

    .line 168
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->j:Ltv/periscope/model/u;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->f:Ltv/periscope/android/ui/chat/y;

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/ui/chat/y;->a(Ltv/periscope/model/StreamType;Ltv/periscope/model/u;)V

    .line 171
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    invoke-interface {v0, p1}, Ltv/periscope/android/chat/c;->a(Z)V

    .line 217
    :cond_0
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    invoke-interface {v0}, Ltv/periscope/android/chat/c;->c()V

    .line 159
    :cond_0
    return-void
.end method

.method b(J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 330
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    invoke-interface {v0}, Ltv/periscope/android/chat/c;->e()V

    .line 334
    :cond_0
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bb;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->j:Ltv/periscope/model/u;

    if-eqz v0, :cond_1

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bb;->n:Z

    .line 338
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bb;->c:Ltv/periscope/android/chat/d;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bb;->i:Ltv/periscope/android/chat/f;

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->j:Ltv/periscope/model/u;

    invoke-virtual {v0}, Ltv/periscope/model/u;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ""

    invoke-virtual/range {v1 .. v6}, Ltv/periscope/android/chat/d;->a(Ltv/periscope/android/chat/f;Ljava/lang/String;JLjava/lang/String;)V

    .line 339
    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bb;->b()V

    .line 344
    :cond_1
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bb;->b()V

    .line 163
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->f:Ltv/periscope/android/ui/chat/y;

    invoke-interface {v0}, Ltv/periscope/android/ui/chat/y;->d()V

    .line 164
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->i:Ltv/periscope/android/chat/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->j:Ltv/periscope/model/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->i:Ltv/periscope/android/chat/f;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bb;->j:Ltv/periscope/model/u;

    invoke-virtual {v1}, Ltv/periscope/model/u;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/chat/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    invoke-interface {v0}, Ltv/periscope/android/chat/c;->a()V

    .line 188
    iput-object v2, p0, Ltv/periscope/android/ui/broadcast/bb;->k:Ltv/periscope/android/chat/c;

    .line 190
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->a:Ltv/periscope/android/ui/chat/ae;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->a:Ltv/periscope/android/ui/chat/ae;

    invoke-virtual {v0}, Ltv/periscope/android/ui/chat/ae;->a()V

    .line 192
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->h:Lde/greenrobot/event/c;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bb;->a:Ltv/periscope/android/ui/chat/ae;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->c(Ljava/lang/Object;)V

    .line 193
    iput-object v2, p0, Ltv/periscope/android/ui/broadcast/bb;->a:Ltv/periscope/android/ui/chat/ae;

    .line 195
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->l:Ltv/periscope/android/ui/broadcast/moderator/a;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->h:Lde/greenrobot/event/c;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bb;->l:Ltv/periscope/android/ui/broadcast/moderator/a;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->c(Ljava/lang/Object;)V

    .line 197
    iput-object v2, p0, Ltv/periscope/android/ui/broadcast/bb;->l:Ltv/periscope/android/ui/broadcast/moderator/a;

    .line 199
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->c:Ltv/periscope/android/chat/d;

    invoke-virtual {v0}, Ltv/periscope/android/chat/d;->a()V

    .line 200
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->h:Lde/greenrobot/event/c;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->c(Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method f()V
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bb;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->j:Ltv/periscope/model/u;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->c:Ltv/periscope/android/chat/d;

    invoke-virtual {v0}, Ltv/periscope/android/chat/d;->a()V

    .line 297
    :cond_0
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/bb;->b()V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->i:Ltv/periscope/android/chat/f;

    .line 302
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->f:Ltv/periscope/android/ui/chat/y;

    invoke-interface {v0}, Ltv/periscope/android/ui/chat/y;->a()V

    .line 303
    return-void
.end method

.method g()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bb;->n:Z

    return v0
.end method

.method public onEventMainThread(Ltv/periscope/android/chat/ChatRoomEvent;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bb;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 116
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/bb;->a(Ltv/periscope/android/chat/ChatRoomEvent;)V

    .line 119
    :cond_0
    return-void
.end method

.method public onEventMainThread(Ltv/periscope/android/chat/EventHistory;)V
    .locals 4

    .prologue
    .line 348
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bb;->n:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    iget-wide v2, p1, Ltv/periscope/android/chat/EventHistory;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/bb;->n:Z

    .line 351
    :cond_0
    return-void
.end method
