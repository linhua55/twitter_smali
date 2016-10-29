.class final Lcom/twitter/android/moments/ui/maker/q;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/e",
        "<",
        "Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;",
        "Landroid/view/ViewGroup;",
        "Lcom/twitter/android/moments/ui/maker/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/df;

.field final synthetic c:Lcom/twitter/android/moments/data/aw;

.field final synthetic d:Lcom/twitter/app/common/inject/o;

.field final synthetic e:Laeb;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/data/aw;Lcom/twitter/app/common/inject/o;Laeb;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/q;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/q;->b:Lcom/twitter/android/moments/ui/maker/df;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/q;->c:Lcom/twitter/android/moments/data/aw;

    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/q;->d:Lcom/twitter/app/common/inject/o;

    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/q;->e:Laeb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/j;
    .locals 7

    .prologue
    .line 42
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/q;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/q;->b:Lcom/twitter/android/moments/ui/maker/df;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/maker/q;->c:Lcom/twitter/android/moments/data/aw;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/maker/q;->d:Lcom/twitter/app/common/inject/o;

    iget-object v6, p0, Lcom/twitter/android/moments/ui/maker/q;->e:Laeb;

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/twitter/android/moments/ui/maker/j;->a(Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/data/aw;Lcom/twitter/app/common/inject/o;Laeb;)Lcom/twitter/android/moments/ui/maker/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/q;->a(Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/j;

    move-result-object v0

    return-object v0
.end method
