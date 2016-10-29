.class public Lblu;
.super Lcom/twitter/library/service/o;
.source "Twttr"


# static fields
.field private static final i:[I


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public g:Z

.field private j:I

.field private k:I

.field private l:Lcom/twitter/library/provider/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lblu;->i:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    const-class v0, Lblu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lblu;->i:[I

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/twitter/library/service/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;[I)V

    .line 65
    iput v2, p0, Lblu;->j:I

    .line 67
    iput v2, p0, Lblu;->k:I

    .line 77
    iget-object v0, p0, Lblu;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v0

    iput-object v0, p0, Lblu;->l:Lcom/twitter/library/provider/ar;

    .line 78
    return-void
.end method

.method private e(I)I
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lblu;->j:I

    or-int/2addr v0, p1

    iget v1, p0, Lblu;->k:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method private v()V
    .locals 7

    .prologue
    .line 164
    invoke-virtual {p0}, Lblu;->h()Lcom/twitter/library/service/ab;

    move-result-object v0

    iget-wide v2, v0, Lcom/twitter/library/service/ab;->c:J

    .line 165
    iget-object v1, p0, Lblu;->l:Lcom/twitter/library/provider/ar;

    invoke-virtual {p0, v2, v3}, Lblu;->b(J)I

    move-result v0

    invoke-direct {p0, v0}, Lblu;->e(I)I

    move-result v4

    .line 166
    invoke-virtual {p0}, Lblu;->e()Z

    move-result v5

    const/4 v6, 0x0

    .line 165
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/ar;->a(JIZLcom/twitter/library/provider/b;)I

    .line 167
    return-void
.end method


# virtual methods
.method public a(I)Lblu;
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lblu;->j:I

    invoke-static {v0, p1}, Lcso;->a(II)I

    move-result v0

    iput v0, p0, Lblu;->j:I

    .line 83
    return-object p0
.end method

.method protected a()V
    .locals 7

    .prologue
    .line 106
    invoke-virtual {p0}, Lblu;->h()Lcom/twitter/library/service/ab;

    move-result-object v0

    iget-wide v2, v0, Lcom/twitter/library/service/ab;->c:J

    .line 107
    invoke-virtual {p0}, Lblu;->h()Lcom/twitter/library/service/ab;

    move-result-object v0

    iget-object v4, v0, Lcom/twitter/library/service/ab;->e:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lblu;->u()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lblu;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :pswitch_0
    iget-object v0, p0, Lblu;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lblu;->a(Ljava/lang/String;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 114
    :pswitch_1
    iget v5, p0, Lblu;->b:I

    iget-boolean v6, p0, Lblu;->c:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lblu;->a(JLjava/lang/String;IZ)V

    goto :goto_0

    .line 118
    :pswitch_2
    invoke-virtual {p0, v2, v3}, Lblu;->a(J)V

    goto :goto_0

    .line 122
    :pswitch_3
    invoke-virtual {p0}, Lblu;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p0, v2, v3, v4}, Lblu;->a(JLjava/lang/String;)Z

    move-result v0

    .line 124
    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0, v2, v3}, Lblu;->b(J)I

    move-result v0

    .line 128
    invoke-direct {p0, v0}, Lblu;->e(I)I

    move-result v5

    .line 129
    if-eq v0, v5, :cond_0

    .line 130
    iget-boolean v6, p0, Lblu;->c:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lblu;->a(JLjava/lang/String;IZ)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0}, Lblu;->v()V

    .line 139
    invoke-virtual {p0, v2, v3}, Lblu;->c(J)Lcom/twitter/library/platform/notifications/x;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/library/platform/notifications/x;->a(Z)V

    .line 140
    iget-boolean v0, p0, Lblu;->g:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lblu;->b()V

    goto :goto_0

    .line 148
    :cond_2
    invoke-direct {p0}, Lblu;->v()V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(J)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lblu;->h:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/twitter/library/platform/notifications/PushRegistration;->e(Landroid/content/Context;J)V

    .line 183
    return-void
.end method

.method protected a(JLjava/lang/String;IZ)V
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 177
    iget-object v1, p0, Lblu;->h:Landroid/content/Context;

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/twitter/library/platform/notifications/PushRegistration;->a(Landroid/content/Context;JLjava/lang/String;IZ)V

    .line 178
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lblu;->h:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/twitter/library/platform/notifications/PushRegistration;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method protected a(JLjava/lang/String;)Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lblu;->h:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;J)Z

    move-result v0

    return v0
.end method

.method protected b(J)I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lblu;->h:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/twitter/library/platform/notifications/PushRegistration;->a(Landroid/content/Context;J)I

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lblu;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/platform/notifications/PushRegistration;->d(Landroid/content/Context;)V

    .line 188
    return-void
.end method

.method public c(I)Lblu;
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lblu;->k:I

    invoke-static {v0, p1}, Lcso;->a(II)I

    move-result v0

    iput v0, p0, Lblu;->k:I

    .line 101
    return-object p0
.end method

.method protected c(J)Lcom/twitter/library/platform/notifications/x;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lblu;->h:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;J)Lcom/twitter/library/platform/notifications/x;

    move-result-object v0

    return-object v0
.end method

.method protected e()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lblu;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
