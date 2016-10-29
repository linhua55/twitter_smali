.class Lcyk;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcyh;


# instance fields
.field final synthetic a:Lcyj;


# direct methods
.method constructor <init>(Lcyj;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcyk;->a:Lcyj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcyd;)Z
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcyk;->a:Lcyj;

    invoke-static {v0}, Lcyj;->a(Lcyj;)Lcyl;

    move-result-object v0

    iget-object v0, v0, Lcyl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyh;

    .line 50
    invoke-interface {v0, p1}, Lcyh;->a(Lcyd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcyk;->a:Lcyj;

    invoke-static {v0}, Lcyj;->a(Lcyj;)Lcyl;

    move-result-object v0

    iget-object v0, v0, Lcyl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyh;

    .line 43
    invoke-interface {v0, p1}, Lcyh;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method
