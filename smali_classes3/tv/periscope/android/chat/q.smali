.class public Ltv/periscope/android/chat/q;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/chat/c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final a:Lde/greenrobot/event/c;

.field private final b:Ltv/periscope/android/data/f;

.field private final c:Ltv/periscope/android/chat/d;

.field private final d:Z

.field private e:Ltv/periscope/android/player/e;

.field private f:Ltv/periscope/android/chat/i;

.field private g:Z

.field private h:Ltv/periscope/android/chat/r;

.field private i:Ltv/periscope/android/chat/x;

.field private j:Ltv/periscope/android/chat/f;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lde/greenrobot/event/c;Ltv/periscope/android/data/f;Ltv/periscope/android/chat/d;Ltv/periscope/android/player/e;ZLtv/periscope/android/chat/i;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ltv/periscope/android/chat/q;->a:Lde/greenrobot/event/c;

    .line 47
    iput-object p2, p0, Ltv/periscope/android/chat/q;->b:Ltv/periscope/android/data/f;

    .line 48
    iput-object p4, p0, Ltv/periscope/android/chat/q;->e:Ltv/periscope/android/player/e;

    .line 49
    iput-boolean p5, p0, Ltv/periscope/android/chat/q;->g:Z

    .line 50
    iput-object p3, p0, Ltv/periscope/android/chat/q;->c:Ltv/periscope/android/chat/d;

    .line 51
    iput-object p6, p0, Ltv/periscope/android/chat/q;->f:Ltv/periscope/android/chat/i;

    .line 52
    iput-boolean p7, p0, Ltv/periscope/android/chat/q;->d:Z

    .line 53
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Ltv/periscope/android/chat/q;->a:Lde/greenrobot/event/c;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->c(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    invoke-virtual {v0}, Ltv/periscope/android/chat/r;->c()V

    .line 100
    iput-object v1, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    .line 102
    :cond_0
    iput-object v1, p0, Ltv/periscope/android/chat/q;->i:Ltv/periscope/android/chat/x;

    .line 103
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ltv/periscope/android/chat/q;->f()V

    .line 91
    iput-object v0, p0, Ltv/periscope/android/chat/q;->e:Ltv/periscope/android/player/e;

    .line 92
    iput-object v0, p0, Ltv/periscope/android/chat/q;->f:Ltv/periscope/android/chat/i;

    .line 93
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Ltv/periscope/android/chat/q;->i:Ltv/periscope/android/chat/x;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Ltv/periscope/android/chat/q;->i:Ltv/periscope/android/chat/x;

    invoke-virtual {v0, p1, p2}, Ltv/periscope/android/chat/x;->c(J)V

    .line 78
    iget-object v0, p0, Ltv/periscope/android/chat/q;->i:Ltv/periscope/android/chat/x;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/chat/x;->a(ZZ)V

    .line 80
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    invoke-virtual {v0}, Ltv/periscope/android/chat/r;->d()V

    .line 82
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    invoke-virtual {v0}, Ltv/periscope/android/chat/r;->j()V

    .line 84
    :cond_1
    return-void
.end method

.method public a(Ltv/periscope/android/chat/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    iput-object p1, p0, Ltv/periscope/android/chat/q;->j:Ltv/periscope/android/chat/f;

    .line 119
    iput-object p4, p0, Ltv/periscope/android/chat/q;->k:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    invoke-virtual {v0, p1, p4}, Ltv/periscope/android/chat/r;->a(Ltv/periscope/android/chat/f;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 8

    .prologue
    .line 127
    iput-boolean p1, p0, Ltv/periscope/android/chat/q;->g:Z

    .line 128
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/chat/q;->i:Ltv/periscope/android/chat/x;

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    invoke-direct {p0}, Ltv/periscope/android/chat/q;->f()V

    .line 132
    :cond_1
    new-instance v0, Ltv/periscope/android/chat/r;

    iget-object v1, p0, Ltv/periscope/android/chat/q;->a:Lde/greenrobot/event/c;

    iget-object v2, p0, Ltv/periscope/android/chat/q;->b:Ltv/periscope/android/data/f;

    iget-object v3, p0, Ltv/periscope/android/chat/q;->c:Ltv/periscope/android/chat/d;

    iget-object v4, p0, Ltv/periscope/android/chat/q;->e:Ltv/periscope/android/player/e;

    iget-boolean v5, p0, Ltv/periscope/android/chat/q;->g:Z

    iget-object v6, p0, Ltv/periscope/android/chat/q;->f:Ltv/periscope/android/chat/i;

    iget-boolean v7, p0, Ltv/periscope/android/chat/q;->d:Z

    invoke-direct/range {v0 .. v7}, Ltv/periscope/android/chat/r;-><init>(Lde/greenrobot/event/c;Ltv/periscope/android/data/f;Ltv/periscope/android/chat/d;Ltv/periscope/android/player/e;ZLtv/periscope/android/chat/i;Z)V

    iput-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    .line 136
    new-instance v0, Ltv/periscope/android/chat/b;

    iget-boolean v1, p0, Ltv/periscope/android/chat/q;->g:Z

    iget-object v2, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    invoke-virtual {v2}, Ltv/periscope/android/chat/r;->h()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/chat/b;-><init>(ZLjava/util/Map;)V

    iput-object v0, p0, Ltv/periscope/android/chat/q;->i:Ltv/periscope/android/chat/x;

    .line 138
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    iget-object v1, p0, Ltv/periscope/android/chat/q;->i:Ltv/periscope/android/chat/x;

    invoke-virtual {v0, v1}, Ltv/periscope/android/chat/r;->a(Ltv/periscope/android/chat/x;)V

    .line 139
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    iget-object v1, p0, Ltv/periscope/android/chat/q;->j:Ltv/periscope/android/chat/f;

    iget-object v2, p0, Ltv/periscope/android/chat/q;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/chat/r;->a(Ltv/periscope/android/chat/f;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    invoke-virtual {v0}, Ltv/periscope/android/chat/r;->start()V

    .line 141
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ltv/periscope/android/chat/q;->a:Lde/greenrobot/event/c;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    invoke-virtual {v0}, Ltv/periscope/android/chat/r;->i()V

    .line 65
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    invoke-virtual {v0}, Ltv/periscope/android/chat/r;->j()V

    .line 72
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    invoke-virtual {v0}, Ltv/periscope/android/chat/r;->d()V

    .line 110
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/chat/q;->i:Ltv/periscope/android/chat/x;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Ltv/periscope/android/chat/q;->i:Ltv/periscope/android/chat/x;

    invoke-virtual {v0, v1, v1}, Ltv/periscope/android/chat/x;->a(ZZ)V

    .line 113
    :cond_1
    return-void
.end method

.method public onEventMainThread(Ltv/periscope/android/chat/EventHistory;)V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/chat/q;->i:Ltv/periscope/android/chat/x;

    if-nez v0, :cond_1

    .line 160
    :cond_0
    return-void

    .line 149
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-virtual {p1}, Ltv/periscope/android/chat/EventHistory;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/chat/w;

    .line 152
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/chat/q;->i:Ltv/periscope/android/chat/x;

    invoke-virtual {p1}, Ltv/periscope/android/chat/EventHistory;->b()Z

    move-result v2

    iget-object v3, p1, Ltv/periscope/android/chat/EventHistory;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Ltv/periscope/android/chat/x;->a(Ljava/util/List;ZLjava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/chat/w;

    .line 158
    iget-object v2, p0, Ltv/periscope/android/chat/q;->h:Ltv/periscope/android/chat/r;

    iget-object v3, v0, Ltv/periscope/android/chat/w;->a:Ltv/periscope/model/chat/MessageType;

    iget-object v3, v3, Ltv/periscope/model/chat/MessageType;->throttle:Ltv/periscope/model/chat/MessageType$Throttle;

    invoke-virtual {v2, v3, v0}, Ltv/periscope/android/chat/r;->a(Ltv/periscope/model/chat/MessageType$Throttle;Ljava/lang/Object;)V

    goto :goto_1
.end method
