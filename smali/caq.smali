.class public Lcaq;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcaq;


# instance fields
.field private final b:Lcat;


# direct methods
.method private constructor <init>(Lcat;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcaq;->b:Lcat;

    .line 31
    return-void
.end method

.method public static a()Lcaq;
    .locals 3

    .prologue
    .line 35
    const-class v0, Lcaq;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 36
    sget-object v0, Lcaq;->a:Lcaq;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcaq;

    new-instance v1, Lcas;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcas;-><init>(Lcar;)V

    invoke-direct {v0, v1}, Lcaq;-><init>(Lcat;)V

    sput-object v0, Lcaq;->a:Lcaq;

    .line 39
    :cond_0
    sget-object v0, Lcaq;->a:Lcaq;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/Tweet;)J
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcaq;->b:Lcat;

    invoke-interface {v0}, Lcat;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/twitter/model/core/Tweet;->q:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p1, Lcom/twitter/model/core/Tweet;->p:J

    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 50
    const-string/jumbo v0, "conversations_discount_attachments_android_4921"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "discount_attachments"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcaq;->b:Lcat;

    invoke-interface {v0}, Lcat;->c()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcaq;->b:Lcat;

    invoke-interface {v0}, Lcat;->b()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 4

    .prologue
    .line 66
    const-string/jumbo v0, "conversations_autopopulate_reply_android_4275"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "treatment"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcaq;->b:Lcat;

    invoke-interface {v0}, Lcat;->d()Z

    move-result v0

    return v0
.end method
