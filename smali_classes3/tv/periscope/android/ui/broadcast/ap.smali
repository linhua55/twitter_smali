.class Ltv/periscope/android/ui/broadcast/ap;
.super Landroid/view/OrientationEventListener;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcast/am;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/am;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ap;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    .prologue
    .line 290
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 291
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ap;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/am;->k(Ltv/periscope/android/ui/broadcast/am;)V

    .line 293
    :cond_0
    return-void
.end method
