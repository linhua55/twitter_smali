.class Ldaq;
.super Lczl;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lczl",
        "<TOUT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldap;

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TIN;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TOUT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldap;)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Ldaq;->a:Ldap;

    invoke-direct {p0}, Lczl;-><init>()V

    .line 152
    iget-object v0, p0, Ldaq;->a:Ldap;

    iget-object v0, v0, Ldap;->a:Ljava/lang/Iterable;

    .line 153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ldaq;->b:Ljava/util/Iterator;

    .line 154
    iget-object v0, p0, Ldaq;->b:Ljava/util/Iterator;

    .line 155
    invoke-direct {p0, v0}, Ldaq;->a(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ldaq;->c:Ljava/util/Iterator;

    .line 154
    return-void
.end method

.method private a(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TIN;>;)",
            "Ljava/util/Iterator",
            "<+TOUT;>;"
        }
    .end annotation

    .prologue
    .line 175
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Ldaq;->a:Ldap;

    iget-object v0, v0, Ldap;->b:Lczn;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lczn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 177
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 177
    :cond_0
    invoke-static {}, Lczq;->c()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_1
    invoke-static {}, Lczq;->c()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Ldaq;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 159
    :goto_0
    iget-object v0, p0, Ldaq;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldaq;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Ldaq;->b:Ljava/util/Iterator;

    invoke-direct {p0, v0}, Ldaq;->a(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ldaq;->c:Ljava/util/Iterator;

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Ldaq;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method
