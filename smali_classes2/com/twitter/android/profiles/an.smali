.class public Lcom/twitter/android/profiles/an;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/profiles/v;


# instance fields
.field protected final a:Landroid/os/Bundle;

.field protected final b:Lcom/twitter/model/core/TwitterUser;

.field protected final c:Landroid/net/Uri;

.field protected final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/app/common/base/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/twitter/model/core/TwitterUser;Landroid/net/Uri;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/twitter/model/core/TwitterUser;",
            "Landroid/net/Uri;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/app/common/base/BaseFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/twitter/android/profiles/an;->a:Landroid/os/Bundle;

    .line 34
    iput-object p2, p0, Lcom/twitter/android/profiles/an;->b:Lcom/twitter/model/core/TwitterUser;

    .line 35
    iput-object p3, p0, Lcom/twitter/android/profiles/an;->c:Landroid/net/Uri;

    .line 36
    iput-object p4, p0, Lcom/twitter/android/profiles/an;->d:Ljava/lang/Class;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/ax;Lcom/twitter/model/core/TwitterUser;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    invoke-virtual {p0}, Lcom/twitter/android/profiles/an;->b()Lcom/twitter/library/client/ax;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-object v0
.end method

.method protected b()Lcom/twitter/library/client/ax;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    new-instance v0, Lcom/twitter/app/common/list/y;

    iget-object v1, p0, Lcom/twitter/android/profiles/an;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/twitter/app/common/list/y;-><init>(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {v0, v3}, Lcom/twitter/app/common/list/y;->h(Z)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v1, "user"

    iget-object v2, p0, Lcom/twitter/android/profiles/an;->b:Lcom/twitter/model/core/TwitterUser;

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v1, "fragment_page_number"

    .line 52
    invoke-virtual {v0, v1, v3}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;I)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    .line 53
    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/twitter/library/client/ay;

    iget-object v2, p0, Lcom/twitter/android/profiles/an;->c:Landroid/net/Uri;

    iget-object v3, p0, Lcom/twitter/android/profiles/an;->d:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/client/ay;-><init>(Landroid/net/Uri;Ljava/lang/Class;)V

    .line 55
    invoke-virtual {v1, v0}, Lcom/twitter/library/client/ay;->a(Lcom/twitter/app/common/base/f;)Lcom/twitter/library/client/ay;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/twitter/library/client/ay;->a()Lcom/twitter/library/client/ax;

    move-result-object v0

    .line 54
    return-object v0
.end method
