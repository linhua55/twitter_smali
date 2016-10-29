.class Ltv/periscope/android/ui/broadcast/be;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcast/ChatRoomView;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/ChatRoomView;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/be;->a:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/be;->a:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a(Ltv/periscope/android/ui/broadcast/ChatRoomView;)V

    .line 65
    return-void
.end method
