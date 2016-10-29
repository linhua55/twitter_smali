.class public Lcom/twitter/android/moments/ui/maker/n;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lasn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lasn",
        "<",
        "Lcom/twitter/model/moments/viewmodels/m;",
        "Lcom/twitter/android/moments/ui/maker/e;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/view/LayoutInflater;

.field final b:Lcom/twitter/android/moments/ui/maker/df;

.field private final c:Lcom/twitter/android/moments/data/aw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/moments/data/aw",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/data/aw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Lcom/twitter/android/moments/ui/maker/df;",
            "Lcom/twitter/android/moments/data/aw",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/n;->a:Landroid/view/LayoutInflater;

    .line 152
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/n;->b:Lcom/twitter/android/moments/ui/maker/df;

    .line 153
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/n;->c:Lcom/twitter/android/moments/data/aw;

    .line 154
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/m;)I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 141
    check-cast p1, Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/n;->a(Lcom/twitter/model/moments/viewmodels/m;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Lasl;I)Lcom/twitter/android/moments/ui/maker/e;
    .locals 5

    .prologue
    .line 160
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/n;->a:Landroid/view/LayoutInflater;

    .line 161
    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/a;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->b()Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    move-result-object v1

    invoke-static {v1}, Lams;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;)Lams;

    move-result-object v1

    .line 164
    new-instance v2, Lcom/twitter/android/moments/ui/maker/e;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/n;->b:Lcom/twitter/android/moments/ui/maker/df;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/maker/n;->c:Lcom/twitter/android/moments/data/aw;

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/twitter/android/moments/ui/maker/e;-><init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/a;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/data/aw;Lams;)V

    return-object v2
.end method

.method public synthetic b(Landroid/view/ViewGroup;Lasl;I)Lasm;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/moments/ui/maker/n;->a(Landroid/view/ViewGroup;Lasl;I)Lcom/twitter/android/moments/ui/maker/e;

    move-result-object v0

    return-object v0
.end method
