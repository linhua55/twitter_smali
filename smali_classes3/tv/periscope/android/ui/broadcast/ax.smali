.class Ltv/periscope/android/ui/broadcast/ax;
.super Ltv/periscope/android/view/ar;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcast/ChatComposer;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/ChatComposer;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ax;->a:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-direct {p0}, Ltv/periscope/android/view/ar;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 206
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ax;->a:Ltv/periscope/android/ui/broadcast/ChatComposer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->a(Ltv/periscope/android/ui/broadcast/ChatComposer;Z)Z

    .line 209
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ax;->a:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->a()V

    .line 210
    return-void
.end method
