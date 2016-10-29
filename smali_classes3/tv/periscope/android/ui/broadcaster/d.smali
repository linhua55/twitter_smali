.class Ltv/periscope/android/ui/broadcaster/d;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Ltv/periscope/android/ui/broadcaster/d;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/d;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->b(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V

    .line 90
    return-void
.end method
