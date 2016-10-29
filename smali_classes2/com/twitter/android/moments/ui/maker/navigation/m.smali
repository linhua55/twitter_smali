.class public Lcom/twitter/android/moments/ui/maker/navigation/m;
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
        "Lcom/twitter/android/moments/ui/maker/navigation/an;",
        "Lcom/twitter/android/moments/ui/maker/navigation/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/app/common/base/BaseFragmentActivity;

.field private final b:Landroid/view/ViewGroup;

.field private final c:Lcom/twitter/android/moments/data/maker/a;

.field private final d:Laui;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laui",
            "<",
            "Lcom/twitter/android/moments/ui/maker/bp;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/app/common/base/BaseFragmentActivity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/data/maker/a;Laui;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/app/common/base/BaseFragmentActivity;",
            "Landroid/view/ViewGroup;",
            "Lcom/twitter/android/moments/data/maker/a;",
            "Laui",
            "<",
            "Lcom/twitter/android/moments/ui/maker/bp;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Landroid/net/Uri;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/m;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    .line 27
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/navigation/m;->b:Landroid/view/ViewGroup;

    .line 28
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/navigation/m;->c:Lcom/twitter/android/moments/data/maker/a;

    .line 29
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/navigation/m;->d:Laui;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/navigation/an;)Lcom/twitter/android/moments/ui/maker/navigation/k;
    .locals 6

    .prologue
    .line 35
    new-instance v0, Lcom/twitter/android/moments/ui/maker/navigation/k;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/m;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/navigation/m;->b:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/navigation/m;->c:Lcom/twitter/android/moments/data/maker/a;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/maker/navigation/m;->d:Laui;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/maker/navigation/m;->c:Lcom/twitter/android/moments/data/maker/a;

    .line 37
    invoke-static {v4, v5, p1}, Lcom/twitter/android/moments/ui/maker/aq;->a(Laui;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/navigation/ao;)Lcom/twitter/android/moments/ui/maker/aq;

    move-result-object v4

    .line 36
    invoke-static {v1, v2, p1, v3, v4}, Lamj;->a(Lcom/twitter/app/common/base/BaseFragmentActivity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/aq;)Lamj;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/moments/ui/maker/navigation/k;-><init>(Lamj;)V

    .line 35
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/twitter/android/moments/ui/maker/navigation/ao;

    check-cast p2, Lcom/twitter/android/moments/ui/maker/navigation/an;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/navigation/m;->a(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/navigation/an;)Lcom/twitter/android/moments/ui/maker/navigation/k;

    move-result-object v0

    return-object v0
.end method
