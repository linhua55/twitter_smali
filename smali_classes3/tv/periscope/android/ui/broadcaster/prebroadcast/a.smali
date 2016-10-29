.class Ltv/periscope/android/ui/broadcaster/prebroadcast/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/a;->a:Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/a;->a:Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->a(Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;)Ltv/periscope/android/ui/broadcaster/prebroadcast/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/a;->a:Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->a(Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;)Ltv/periscope/android/ui/broadcaster/prebroadcast/d;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/d;->a()V

    .line 57
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
