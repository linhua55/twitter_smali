.class public Lcom/twitter/android/moments/ui/maker/navigation/u;
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
        "Lcom/twitter/model/moments/viewmodels/m;",
        "Lcom/twitter/android/moments/ui/maker/navigation/r;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/view/ViewGroup;

.field private final c:Lcom/twitter/android/moments/data/maker/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/data/maker/a;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/u;->a:Landroid/app/Activity;

    .line 21
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/navigation/u;->b:Landroid/view/ViewGroup;

    .line 22
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/navigation/u;->c:Lcom/twitter/android/moments/data/maker/a;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/model/moments/viewmodels/m;)Lcom/twitter/android/moments/ui/maker/navigation/r;
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/u;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/u;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/navigation/u;->c:Lcom/twitter/android/moments/data/maker/a;

    .line 30
    invoke-static {v0, v1, v2, p1}, Lcom/twitter/android/moments/ui/maker/bc;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/navigation/ao;)Lcom/twitter/android/moments/ui/maker/bc;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/twitter/android/moments/ui/maker/navigation/r;

    invoke-direct {v1, v0, p2}, Lcom/twitter/android/moments/ui/maker/navigation/r;-><init>(Lcom/twitter/android/moments/ui/maker/bc;Lcom/twitter/model/moments/viewmodels/m;)V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/twitter/android/moments/ui/maker/navigation/ao;

    check-cast p2, Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/navigation/u;->a(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/model/moments/viewmodels/m;)Lcom/twitter/android/moments/ui/maker/navigation/r;

    move-result-object v0

    return-object v0
.end method
