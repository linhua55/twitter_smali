.class public Lcfe;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcfe;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 33
    const-string/jumbo v0, "moments_japan_news_android_4804"

    invoke-static {v0}, Lcom/twitter/config/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcfe;->b:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "moments_japan_news_android_4804"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "moments_hero"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "moments_no_hero"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "moments_no_hero_news"

    aput-object v3, v1, v2

    .line 35
    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcfe;->c:Z

    .line 37
    return-void
.end method

.method public static a()Lcfe;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcfe;->a:Lcfe;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcfe;

    invoke-direct {v0}, Lcfe;-><init>()V

    sput-object v0, Lcfe;->a:Lcfe;

    .line 28
    :cond_0
    sget-object v0, Lcfe;->a:Lcfe;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "moments_japan_news_android_4804"

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcfe;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcfe;->c:Z

    return v0
.end method
