.class Ltv/periscope/android/ui/broadcaster/prebroadcast/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/b;->a:Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/b;->a:Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->a(Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;)Ltv/periscope/android/ui/broadcaster/prebroadcast/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/b;->a:Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->a(Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;)Ltv/periscope/android/ui/broadcaster/prebroadcast/d;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/d;->b()V

    .line 89
    :cond_0
    return-void
.end method
