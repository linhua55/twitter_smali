.class Ltv/periscope/android/ui/broadcast/ar;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcast/am;

.field private final b:D


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/am;D)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ar;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-wide p2, p0, Ltv/periscope/android/ui/broadcast/ar;->b:D

    .line 198
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ar;->a:Ltv/periscope/android/ui/broadcast/am;

    iget-wide v2, p0, Ltv/periscope/android/ui/broadcast/ar;->b:D

    invoke-virtual {v0, v2, v3}, Ltv/periscope/android/ui/broadcast/am;->a(D)V

    .line 203
    return-void
.end method
