.class final Lcom/twitter/android/moments/ui/maker/ch;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Lcom/twitter/app/common/inject/o;",
        "Lcom/twitter/android/moments/ui/maker/navigation/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/twitter/android/moments/ui/maker/df;

.field final synthetic d:Lcom/twitter/android/moments/data/aw;

.field final synthetic e:Laeb;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/data/aw;Laeb;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ch;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/ch;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/ch;->c:Lcom/twitter/android/moments/ui/maker/df;

    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/ch;->d:Lcom/twitter/android/moments/data/aw;

    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/ch;->e:Laeb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/inject/o;)Lcom/twitter/android/moments/ui/maker/navigation/a;
    .locals 7

    .prologue
    .line 45
    new-instance v6, Lcom/twitter/android/moments/ui/maker/navigation/a;

    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ch;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/ch;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/ch;->c:Lcom/twitter/android/moments/ui/maker/df;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/ch;->d:Lcom/twitter/android/moments/data/aw;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/maker/ch;->e:Laeb;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/moments/ui/maker/p;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/data/aw;Lcom/twitter/app/common/inject/o;Laeb;)Lcom/twitter/android/moments/ui/maker/p;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/twitter/android/moments/ui/maker/navigation/a;-><init>(Lcom/twitter/android/moments/ui/maker/p;)V

    return-object v6
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/twitter/app/common/inject/o;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/ch;->a(Lcom/twitter/app/common/inject/o;)Lcom/twitter/android/moments/ui/maker/navigation/a;

    move-result-object v0

    return-object v0
.end method
