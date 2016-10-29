.class public final Lcom/twitter/config/i;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/twitter/config/i;->a:Ljava/lang/Object;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/twitter/config/i;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/twitter/util/object/j;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 26
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/twitter/config/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/config/i;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/config/i;

    iget-object v1, p1, Lcom/twitter/config/i;->a:Ljava/lang/Object;

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 26
    :goto_0
    return v0

    .line 27
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/config/i;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
