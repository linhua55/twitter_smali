.class public Lcom/twitter/android/moments/ui/maker/navigation/q;
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
        "Lcom/twitter/android/moments/ui/maker/navigation/ao;",
        "Lcom/twitter/model/moments/viewmodels/MomentPage;",
        "Lcom/twitter/android/moments/ui/maker/navigation/n;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/twitter/android/moments/data/maker/a;

.field private final c:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/data/maker/a;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/q;->a:Landroid/app/Activity;

    .line 22
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/navigation/q;->c:Landroid/view/ViewGroup;

    .line 23
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/navigation/q;->b:Lcom/twitter/android/moments/data/maker/a;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/ui/maker/navigation/n;
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lcom/twitter/android/moments/ui/maker/navigation/n;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/q;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/navigation/q;->c:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/navigation/q;->b:Lcom/twitter/android/moments/data/maker/a;

    .line 30
    invoke-static {v1, v2, v3, p1, p2}, Lamp;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/model/moments/viewmodels/MomentPage;)Lamp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/moments/ui/maker/navigation/n;-><init>(Lamp;)V

    .line 29
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/twitter/android/moments/ui/maker/navigation/ao;

    check-cast p2, Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/navigation/q;->a(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/ui/maker/navigation/n;

    move-result-object v0

    return-object v0
.end method
