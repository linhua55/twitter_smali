.class public Lbtc;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:J

.field private final c:Lcom/twitter/library/provider/dm;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcom/twitter/library/provider/dm;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbtc;->a:Landroid/content/Context;

    .line 28
    iput-wide p2, p0, Lbtc;->b:J

    .line 29
    iput-object p4, p0, Lbtc;->c:Lcom/twitter/library/provider/dm;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/timeline/cp;)V
    .locals 7

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p1, Lcom/twitter/android/timeline/cp;->a:Lcom/twitter/model/timeline/dd;

    iget v0, v0, Lcom/twitter/model/timeline/dd;->c:I

    packed-switch v0, :pswitch_data_0

    .line 64
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 40
    :pswitch_1
    invoke-virtual {p1}, Lcom/twitter/android/timeline/cp;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v0

    .line 41
    new-instance v6, Lcom/twitter/library/provider/b;

    iget-object v1, p0, Lbtc;->a:Landroid/content/Context;

    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/twitter/library/provider/b;-><init>(Landroid/content/ContentResolver;)V

    .line 43
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    iget v3, v0, Lcom/twitter/android/timeline/bj;->e:I

    invoke-static {v3}, Lcom/twitter/library/provider/cn;->a(I)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v6, v1}, Lcom/twitter/library/provider/b;->a([Landroid/net/Uri;)V

    .line 44
    iget-object v1, p0, Lbtc;->c:Lcom/twitter/library/provider/dm;

    iget-wide v2, p0, Lbtc;->b:J

    iget v4, v0, Lcom/twitter/android/timeline/bj;->e:I

    iget-object v5, v0, Lcom/twitter/android/timeline/bj;->a:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/dm;->b(JILjava/lang/String;Lcom/twitter/library/provider/b;)I

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
