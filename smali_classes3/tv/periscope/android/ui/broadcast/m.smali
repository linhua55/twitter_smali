.class public Ltv/periscope/android/ui/broadcast/m;
.super Ltv/periscope/android/ui/broadcast/d;
.source "Twttr"

# interfaces
.implements Lcom/google/android/gms/maps/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/ui/broadcast/d",
        "<",
        "Ltv/periscope/android/ui/broadcast/aa;",
        ">;",
        "Lcom/google/android/gms/maps/v;"
    }
.end annotation


# instance fields
.field public final b:Ltv/periscope/android/view/ag;

.field public final c:Ltv/periscope/android/ui/view/LocalTimeView;

.field private d:Lcom/google/android/gms/maps/c;

.field private e:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method private constructor <init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/d;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    .line 79
    new-instance v1, Ltv/periscope/android/view/ag;

    sget v0, Ltv/periscope/android/library/l;->map:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapView;

    invoke-direct {v1, v0}, Ltv/periscope/android/view/ag;-><init>(Lcom/google/android/gms/maps/MapView;)V

    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/m;->b:Ltv/periscope/android/view/ag;

    .line 80
    sget v0, Ltv/periscope/android/library/l;->broadcast_local_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/view/LocalTimeView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/m;->c:Ltv/periscope/android/ui/view/LocalTimeView;

    .line 81
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/m;->a()V

    .line 82
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/m;
    .locals 3

    .prologue
    .line 67
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__broadcast_info_map:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    new-instance v1, Ltv/periscope/android/ui/broadcast/m;

    invoke-direct {v1, v0, p2}, Ltv/periscope/android/ui/broadcast/m;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    return-object v1
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/m;->b:Ltv/periscope/android/view/ag;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/m;->b:Ltv/periscope/android/view/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/periscope/android/view/ag;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/m;->b:Ltv/periscope/android/view/ag;

    invoke-virtual {v0}, Ltv/periscope/android/view/ag;->a()V

    .line 108
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/m;->b:Ltv/periscope/android/view/ag;

    invoke-virtual {v0, p0}, Ltv/periscope/android/view/ag;->a(Lcom/google/android/gms/maps/v;)V

    .line 118
    :goto_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/m;->b:Ltv/periscope/android/view/ag;

    invoke-virtual {v0}, Ltv/periscope/android/view/ag;->b()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/MapView;->setClickable(Z)V

    .line 120
    :cond_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/m;->b:Ltv/periscope/android/view/ag;

    invoke-virtual {v0}, Ltv/periscope/android/view/ag;->b()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/m;->b:Ltv/periscope/android/view/ag;

    invoke-virtual {v0}, Ltv/periscope/android/view/ag;->b()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 123
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/m;->e:Lcom/google/android/gms/maps/model/LatLng;

    .line 124
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/m;->d:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_0

    .line 125
    if-eqz p1, :cond_1

    .line 127
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/m;->d:Lcom/google/android/gms/maps/c;

    invoke-static {p1}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    .line 128
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 129
    sget v1, Ltv/periscope/android/library/k;->ps__mappin_noheading:I

    invoke-static {v1}, Lcom/google/android/gms/maps/model/b;->a(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 130
    invoke-virtual {v0, v2, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 131
    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->c(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 132
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/m;->d:Lcom/google/android/gms/maps/c;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/f;

    .line 135
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/m;->d:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/c;->a(I)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/m;->d:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->b()V

    .line 138
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/m;->d:Lcom/google/android/gms/maps/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/c;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/m;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/u;->a(Landroid/content/Context;)I

    .line 87
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/m;->d:Lcom/google/android/gms/maps/c;

    .line 88
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/m;->d:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->c()Lcom/google/android/gms/maps/ah;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/ah;->e(Z)V

    .line 89
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/m;->d:Lcom/google/android/gms/maps/c;

    new-instance v1, Ltv/periscope/android/ui/broadcast/n;

    invoke-direct {v1, p0}, Ltv/periscope/android/ui/broadcast/n;-><init>(Ltv/periscope/android/ui/broadcast/m;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/o;)V

    .line 96
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/m;->e:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/m;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 97
    return-void
.end method

.method public bridge synthetic a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Ltv/periscope/android/ui/broadcast/aa;

    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/m;->a(Ltv/periscope/android/ui/broadcast/aa;)V

    return-void
.end method

.method public a(Ltv/periscope/android/ui/broadcast/aa;)V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/aa;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/m;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 146
    return-void
.end method
