.class public Lcom/twitter/app/common/list/f;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcmf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcmf",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/app/common/list/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/app/common/list/h",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/twitter/app/common/list/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/app/common/list/h",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/app/common/list/f;->a:I

    .line 38
    new-instance v0, Landroid/os/Handler;

    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/twitter/app/common/list/i;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/twitter/app/common/list/i;-><init>(Lcom/twitter/app/common/list/f;Lcom/twitter/app/common/list/g;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/twitter/app/common/list/f;->d:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcom/twitter/app/common/list/f;->c:Lcom/twitter/app/common/list/h;

    .line 43
    return-void
.end method

.method private static a(II)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid State transition from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    packed-switch p0, :pswitch_data_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid State value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/h;->a(Ljava/lang/String;)V

    .line 261
    :goto_0
    return-void

    .line 245
    :pswitch_0
    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-static {v0, v2}, Lcom/twitter/util/h;->a(ZLjava/lang/String;)Z

    goto :goto_0

    .line 249
    :pswitch_1
    if-eq p1, v1, :cond_2

    if-ne p1, v4, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    invoke-static {v0, v2}, Lcom/twitter/util/h;->a(ZLjava/lang/String;)Z

    goto :goto_0

    .line 253
    :pswitch_2
    if-eq p1, v4, :cond_4

    if-nez p1, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    invoke-static {v0, v2}, Lcom/twitter/util/h;->a(ZLjava/lang/String;)Z

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/twitter/app/common/list/f;->c:Lcom/twitter/app/common/list/h;

    invoke-interface {v0}, Lcom/twitter/app/common/list/h;->s_()V

    .line 199
    invoke-direct {p0}, Lcom/twitter/app/common/list/f;->h()V

    .line 200
    iget-object v0, p0, Lcom/twitter/app/common/list/f;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/app/common/list/f;->d:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 201
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 200
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 202
    iget-object v0, p0, Lcom/twitter/app/common/list/f;->c:Lcom/twitter/app/common/list/h;

    invoke-interface {v0}, Lcom/twitter/app/common/list/h;->J()V

    .line 203
    return-void
.end method

.method static synthetic a(Lcom/twitter/app/common/list/f;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/twitter/app/common/list/f;->i()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/twitter/app/common/list/f;->a()I

    move-result v0

    .line 208
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/twitter/app/common/list/f;->h()V

    .line 210
    iget-object v0, p0, Lcom/twitter/app/common/list/f;->b:Lcmf;

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/twitter/app/common/list/f;->c:Lcom/twitter/app/common/list/h;

    invoke-interface {v0}, Lcom/twitter/app/common/list/h;->s_()V

    .line 219
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/app/common/list/f;->a(I)V

    .line 221
    :cond_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/twitter/app/common/list/f;->c:Lcom/twitter/app/common/list/h;

    iget-object v1, p0, Lcom/twitter/app/common/list/f;->b:Lcmf;

    invoke-interface {v0, v1, p1}, Lcom/twitter/app/common/list/h;->a(Lcmf;Z)V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/app/common/list/f;->b:Lcmf;

    goto :goto_0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/twitter/app/common/list/f;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/twitter/app/common/list/f;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 225
    invoke-virtual {p0}, Lcom/twitter/app/common/list/f;->a()I

    move-result v2

    .line 226
    if-eqz v2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 229
    if-ne v2, v1, :cond_0

    .line 230
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/app/common/list/f;->a(I)V

    .line 232
    :cond_0
    invoke-direct {p0, v1}, Lcom/twitter/app/common/list/f;->a(Z)V

    .line 233
    return-void

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/twitter/app/common/list/f;->a:I

    return v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/twitter/app/common/list/f;->a:I

    invoke-static {v0, p1}, Lcom/twitter/app/common/list/f;->a(II)V

    .line 75
    iput p1, p0, Lcom/twitter/app/common/list/f;->a:I

    .line 76
    return-void
.end method

.method public a(Lcmf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/twitter/app/common/list/f;->a()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 151
    iput-object p1, p0, Lcom/twitter/app/common/list/f;->b:Lcmf;

    .line 152
    invoke-direct {p0, v1}, Lcom/twitter/app/common/list/f;->a(Z)V

    .line 153
    return-void

    :cond_0
    move v0, v1

    .line 150
    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/service/x;)Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/twitter/library/service/x;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/twitter/app/common/list/f;->a()I

    move-result v3

    .line 165
    if-eq v3, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 166
    if-ne v3, v1, :cond_0

    .line 169
    invoke-virtual {p0, v4}, Lcom/twitter/app/common/list/f;->a(I)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/twitter/app/common/list/f;->a(Lcom/twitter/library/service/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0, v2}, Lcom/twitter/app/common/list/f;->a(Z)V

    .line 174
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 165
    goto :goto_0
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 99
    iget v1, p0, Lcom/twitter/app/common/list/f;->a:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/twitter/app/common/list/f;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/twitter/app/common/list/f;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 108
    invoke-static {}, Lcaz;->a()J

    move-result-wide v0

    .line 109
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 110
    invoke-direct {p0, v0, v1}, Lcom/twitter/app/common/list/f;->a(J)V

    .line 113
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/twitter/app/common/list/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/twitter/app/common/list/f;->c:Lcom/twitter/app/common/list/h;

    invoke-interface {v0}, Lcom/twitter/app/common/list/h;->K()V

    .line 123
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/twitter/app/common/list/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/twitter/app/common/list/f;->c:Lcom/twitter/app/common/list/h;

    invoke-interface {v0}, Lcom/twitter/app/common/list/h;->L()V

    .line 133
    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/twitter/app/common/list/f;->h()V

    .line 141
    return-void
.end method
