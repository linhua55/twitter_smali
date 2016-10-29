.class public Ltv/periscope/android/ui/chat/ae;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltv/periscope/android/ui/chat/ah;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltv/periscope/android/ui/chat/ai;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltv/periscope/android/ui/chat/ag;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Ltv/periscope/android/data/f;

.field private final f:Ltv/periscope/android/data/b;

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ltv/periscope/android/ui/chat/ao;

.field private final i:Z


# direct methods
.method public constructor <init>(Ltv/periscope/android/data/f;Ltv/periscope/android/data/b;ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/ui/chat/ae;->g:Ljava/util/HashMap;

    .line 73
    iput-object p1, p0, Ltv/periscope/android/ui/chat/ae;->e:Ltv/periscope/android/data/f;

    .line 74
    iput-object p2, p0, Ltv/periscope/android/ui/chat/ae;->f:Ltv/periscope/android/data/b;

    .line 75
    iput-boolean p3, p0, Ltv/periscope/android/ui/chat/ae;->i:Z

    .line 76
    iput-object p4, p0, Ltv/periscope/android/ui/chat/ae;->d:Ljava/lang/String;

    .line 77
    new-instance v0, Ltv/periscope/android/ui/chat/ao;

    const/16 v1, 0x19

    const/16 v2, 0x1f4

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Ltv/periscope/android/ui/chat/ao;-><init>(III)V

    iput-object v0, p0, Ltv/periscope/android/ui/chat/ae;->h:Ltv/periscope/android/ui/chat/ao;

    .line 79
    return-void
.end method

.method private a(Ljava/util/List;Ltv/periscope/android/ui/chat/ai;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltv/periscope/chatman/api/Occupant;",
            ">;",
            "Ltv/periscope/android/ui/chat/ai;",
            ")V"
        }
    .end annotation

    .prologue
    .line 183
    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->f:Ltv/periscope/android/data/b;

    iget-object v1, p0, Ltv/periscope/android/ui/chat/ae;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ltv/periscope/android/data/b;->a(Ljava/lang/String;)Ltv/periscope/model/o;

    move-result-object v1

    .line 185
    if-nez v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/chatman/api/Occupant;

    .line 190
    iget-object v4, v0, Ltv/periscope/chatman/api/Occupant;->userId:Ljava/lang/String;

    invoke-virtual {v1}, Ltv/periscope/model/o;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Ltv/periscope/android/ui/chat/ae;->e:Ltv/periscope/android/data/f;

    iget-object v5, v0, Ltv/periscope/chatman/api/Occupant;->userId:Ljava/lang/String;

    invoke-interface {v4, v5}, Ltv/periscope/android/data/f;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 191
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    :cond_3
    invoke-interface {p2, v2}, Ltv/periscope/android/ui/chat/ai;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private a(Ltv/periscope/model/chat/Message;Ltv/periscope/android/ui/chat/ag;)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->e:Ltv/periscope/android/data/f;

    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->s()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/periscope/android/data/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {p2, p1}, Ltv/periscope/android/ui/chat/ag;->b(Ltv/periscope/model/chat/Message;)V

    .line 179
    :cond_0
    return-void
.end method

.method private a(Ltv/periscope/model/chat/Message;Ltv/periscope/android/ui/chat/ah;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->h:Ltv/periscope/android/ui/chat/ao;

    invoke-virtual {v0}, Ltv/periscope/android/ui/chat/ao;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ltv/periscope/android/ui/chat/ah;->a(Ltv/periscope/model/chat/Message;Z)V

    .line 242
    :cond_0
    return-void
.end method

.method private a(Ltv/periscope/model/chat/Message;Ltv/periscope/android/ui/chat/ai;)V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->e:Ltv/periscope/android/data/f;

    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/periscope/android/data/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Ltv/periscope/android/ui/chat/ai;->a(Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method private b()Ltv/periscope/android/ui/chat/ah;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/chat/ah;

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ltv/periscope/model/chat/Message;Ltv/periscope/android/ui/chat/ah;)V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->e:Ltv/periscope/android/data/f;

    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/periscope/android/data/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ltv/periscope/android/ui/chat/ah;->b(Ltv/periscope/model/chat/Message;Z)V

    goto :goto_0
.end method

.method private c()Ltv/periscope/android/ui/chat/ai;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/chat/ai;

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Ltv/periscope/android/ui/chat/ag;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/chat/ag;

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 119
    return-void
.end method

.method public a(Ltv/periscope/android/ui/chat/ag;)V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/periscope/android/ui/chat/ae;->c:Ljava/lang/ref/WeakReference;

    .line 91
    return-void
.end method

.method public a(Ltv/periscope/android/ui/chat/ah;)V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/periscope/android/ui/chat/ae;->a:Ljava/lang/ref/WeakReference;

    .line 83
    return-void
.end method

.method public a(Ltv/periscope/android/ui/chat/ai;)V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/periscope/android/ui/chat/ae;->b:Ljava/lang/ref/WeakReference;

    .line 87
    return-void
.end method

.method public onEventMainThread(Ltv/periscope/chatman/model/Presence;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-direct {p0}, Ltv/periscope/android/ui/chat/ae;->c()Ltv/periscope/android/ui/chat/ai;

    move-result-object v0

    .line 211
    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p1}, Ltv/periscope/chatman/model/Presence;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 216
    invoke-interface {v0, v1}, Ltv/periscope/android/ui/chat/ai;->a(I)V

    .line 217
    invoke-virtual {p1}, Ltv/periscope/chatman/model/Presence;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 218
    invoke-interface {v0, v1}, Ltv/periscope/android/ui/chat/ai;->b(I)V

    goto :goto_0
.end method

.method public onEventMainThread(Ltv/periscope/chatman/model/Roster;)V
    .locals 2

    .prologue
    .line 200
    invoke-direct {p0}, Ltv/periscope/android/ui/chat/ae;->c()Ltv/periscope/android/ui/chat/ai;

    move-result-object v0

    .line 201
    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p1}, Ltv/periscope/chatman/model/Roster;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/chat/ai;->b(Ljava/util/List;)V

    .line 205
    invoke-virtual {p1}, Ltv/periscope/chatman/model/Roster;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ltv/periscope/android/ui/chat/ae;->a(Ljava/util/List;Ltv/periscope/android/ui/chat/ai;)V

    goto :goto_0
.end method

.method public onEventMainThread(Ltv/periscope/model/chat/Message;)V
    .locals 5

    .prologue
    .line 123
    invoke-direct {p0}, Ltv/periscope/android/ui/chat/ae;->b()Ltv/periscope/android/ui/chat/ah;

    move-result-object v1

    .line 124
    invoke-direct {p0}, Ltv/periscope/android/ui/chat/ae;->c()Ltv/periscope/android/ui/chat/ai;

    move-result-object v0

    .line 125
    invoke-direct {p0}, Ltv/periscope/android/ui/chat/ae;->d()Ltv/periscope/android/ui/chat/ag;

    move-result-object v2

    .line 126
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    sget-object v3, Ltv/periscope/android/ui/chat/af;->a:[I

    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->b()Ltv/periscope/model/chat/MessageType;

    move-result-object v4

    invoke-virtual {v4}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    invoke-interface {v1, p1}, Ltv/periscope/android/ui/chat/ah;->b(Ltv/periscope/model/chat/Message;)V

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-direct {p0, p1, v1}, Ltv/periscope/android/ui/chat/ae;->a(Ltv/periscope/model/chat/Message;Ltv/periscope/android/ui/chat/ah;)V

    .line 140
    invoke-direct {p0, p1, v0}, Ltv/periscope/android/ui/chat/ae;->a(Ltv/periscope/model/chat/Message;Ltv/periscope/android/ui/chat/ai;)V

    goto :goto_0

    .line 144
    :pswitch_2
    invoke-direct {p0, p1, v1}, Ltv/periscope/android/ui/chat/ae;->b(Ltv/periscope/model/chat/Message;Ltv/periscope/android/ui/chat/ah;)V

    goto :goto_0

    .line 148
    :pswitch_3
    invoke-interface {v2}, Ltv/periscope/android/ui/chat/ag;->P()V

    goto :goto_0

    .line 152
    :pswitch_4
    invoke-interface {v1, p1}, Ltv/periscope/android/ui/chat/ah;->b(Ltv/periscope/model/chat/Message;)V

    .line 153
    invoke-direct {p0, p1, v2}, Ltv/periscope/android/ui/chat/ae;->a(Ltv/periscope/model/chat/Message;Ltv/periscope/android/ui/chat/ag;)V

    goto :goto_0

    .line 157
    :pswitch_5
    iget-boolean v0, p0, Ltv/periscope/android/ui/chat/ae;->i:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->A()Ljava/lang/String;

    move-result-object v2

    .line 159
    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v3, p0, Ltv/periscope/android/ui/chat/ae;->g:Ljava/util/HashMap;

    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :goto_1
    invoke-interface {v1, p1}, Ltv/periscope/android/ui/chat/ah;->c(Ltv/periscope/model/chat/Message;)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/chat/ae;->g:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
