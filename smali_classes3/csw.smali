.class public Lcsw;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcsy;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-object v0, p1, Lcsy;->a:Ljava/lang/String;

    iput-object v0, p0, Lcsw;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Lcsy;Lcsx;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcsw;-><init>(Lcsy;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 40
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    .line 41
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :cond_2
    check-cast p1, Lcsw;

    .line 45
    iget-object v0, p0, Lcsw;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcsw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcsw;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
