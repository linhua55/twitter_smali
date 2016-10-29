.class Lcom/twitter/android/ou;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/kn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/android/kn",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/SearchPhotosFragment;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/twitter/android/SearchPhotosFragment;)V
    .locals 1

    .prologue
    .line 301
    iput-object p1, p0, Lcom/twitter/android/ou;->a:Lcom/twitter/android/SearchPhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ou;->b:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/SearchPhotosFragment;Lcom/twitter/android/ot;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/twitter/android/ou;-><init>(Lcom/twitter/android/SearchPhotosFragment;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 306
    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/jt;

    iget-object v0, v0, Lcom/twitter/android/jt;->a:Lcom/twitter/android/js;

    .line 308
    iget-object v1, p0, Lcom/twitter/android/ou;->a:Lcom/twitter/android/SearchPhotosFragment;

    invoke-static {v1}, Lcom/twitter/android/SearchPhotosFragment;->b(Lcom/twitter/android/SearchPhotosFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/twitter/android/js;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    invoke-interface {v0}, Lcom/twitter/android/js;->d()Lcom/twitter/model/core/Tweet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v1

    .line 310
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/twitter/android/ou;->b:Ljava/util/Set;

    iget-object v3, v1, Lcss;->c:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/twitter/android/ou;->a:Lcom/twitter/android/SearchPhotosFragment;

    invoke-static {v2}, Lcom/twitter/android/SearchPhotosFragment;->c(Lcom/twitter/android/SearchPhotosFragment;)Lcom/twitter/android/client/c;

    move-result-object v2

    sget-object v3, Lcom/twitter/library/api/PromotedEvent;->a:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {v2, v3, v1}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/ou;->a:Lcom/twitter/android/SearchPhotosFragment;

    invoke-virtual {v1}, Lcom/twitter/android/SearchPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0}, Lcom/twitter/android/js;->d()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/ou;->a:Lcom/twitter/android/SearchPhotosFragment;

    invoke-static {v2}, Lcom/twitter/android/SearchPhotosFragment;->d(Lcom/twitter/android/SearchPhotosFragment;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v2

    const/4 v3, 0x0

    .line 313
    invoke-static {v1, v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/twitter/android/ou;->a:Lcom/twitter/android/SearchPhotosFragment;

    invoke-static {v1}, Lcom/twitter/android/SearchPhotosFragment;->e(Lcom/twitter/android/SearchPhotosFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_1
    return-void
.end method
