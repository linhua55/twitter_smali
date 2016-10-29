.class public Lcom/twitter/android/moments/ui/maker/navigation/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/maker/navigation/ap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/android/moments/ui/maker/navigation/ap",
        "<",
        "Lcom/twitter/android/moments/ui/maker/navigation/aw;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/p;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/p;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/a;->a:Lcom/twitter/android/moments/ui/maker/p;

    .line 15
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/a;->a:Lcom/twitter/android/moments/ui/maker/p;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/p;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/a;->a:Lcom/twitter/android/moments/ui/maker/p;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/p;->b()V

    .line 26
    return-void
.end method

.method public c()Lcom/twitter/android/moments/ui/maker/navigation/au;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/twitter/android/moments/ui/maker/navigation/au;->b:Lcom/twitter/android/moments/ui/maker/navigation/au;

    return-object v0
.end method

.method public d()Lcom/twitter/android/moments/ui/maker/navigation/aw;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/twitter/android/moments/ui/maker/navigation/b;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/maker/navigation/b;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/a;)V

    return-object v0
.end method
