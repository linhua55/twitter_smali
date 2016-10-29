.class public Lcom/twitter/android/moments/ui/maker/ca;
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
        "Lcom/twitter/android/moments/ui/maker/bt;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/view/LayoutInflater;

.field final b:Lcom/twitter/android/moments/ui/maker/df;

.field private final c:Lcom/twitter/android/moments/ui/maker/dp;

.field private final d:Lcom/twitter/android/moments/ui/maker/navigation/ao;

.field private final e:Lcom/twitter/android/moments/data/maker/a;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/ui/maker/dp;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/data/maker/a;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ca;->a:Landroid/view/LayoutInflater;

    .line 153
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/ca;->b:Lcom/twitter/android/moments/ui/maker/df;

    .line 154
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/ca;->c:Lcom/twitter/android/moments/ui/maker/dp;

    .line 155
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/ca;->d:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    .line 156
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/ca;->e:Lcom/twitter/android/moments/data/maker/a;

    .line 157
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/m;)I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 139
    check-cast p1, Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/ca;->a(Lcom/twitter/model/moments/viewmodels/m;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Lasl;I)Lcom/twitter/android/moments/ui/maker/bt;
    .locals 7

    .prologue
    .line 163
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ca;->a:Landroid/view/LayoutInflater;

    .line 164
    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/t;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->b()Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    move-result-object v0

    invoke-static {v0}, Lams;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;)Lams;

    move-result-object v6

    .line 167
    new-instance v0, Lcom/twitter/android/moments/ui/maker/bt;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/ca;->b:Lcom/twitter/android/moments/ui/maker/df;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/ca;->c:Lcom/twitter/android/moments/ui/maker/dp;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/maker/ca;->d:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/maker/ca;->e:Lcom/twitter/android/moments/data/maker/a;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/moments/ui/maker/bt;-><init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/t;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/ui/maker/dp;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/data/maker/a;Lams;)V

    return-object v0
.end method

.method public synthetic b(Landroid/view/ViewGroup;Lasl;I)Lasm;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/moments/ui/maker/ca;->a(Landroid/view/ViewGroup;Lasl;I)Lcom/twitter/android/moments/ui/maker/bt;

    move-result-object v0

    return-object v0
.end method
