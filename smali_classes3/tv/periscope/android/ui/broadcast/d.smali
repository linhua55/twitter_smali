.class public abstract Ltv/periscope/android/ui/broadcast/d;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field protected final a:Ltv/periscope/android/ui/broadcast/c;


# direct methods
.method public constructor <init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 59
    iput-object p2, p0, Ltv/periscope/android/ui/broadcast/d;->a:Ltv/periscope/android/ui/broadcast/c;

    .line 60
    return-void
.end method


# virtual methods
.method public abstract a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
