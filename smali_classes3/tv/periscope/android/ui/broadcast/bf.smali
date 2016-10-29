.class Ltv/periscope/android/ui/broadcast/bf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/ui/broadcast/moderator/o;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcast/ChatRoomView;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/ChatRoomView;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/bf;->a:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .prologue
    .line 76
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bf;->a:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Ldnb;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bf;->a:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ChatComposer;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bf;->a:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-virtual {v2}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Ltv/periscope/android/library/p;->ps__chat_status_moderation_limited:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->setChatStatus(Ljava/lang/String;)V

    .line 78
    return-void
.end method
