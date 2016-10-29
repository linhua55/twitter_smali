.class Ltv/periscope/android/ui/user/l;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/user/UserPickerSheet;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/user/UserPickerSheet;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Ltv/periscope/android/ui/user/l;->a:Ltv/periscope/android/ui/user/UserPickerSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Ltv/periscope/android/ui/user/l;->a:Ltv/periscope/android/ui/user/UserPickerSheet;

    invoke-static {v0}, Ltv/periscope/android/ui/user/UserPickerSheet;->b(Ltv/periscope/android/ui/user/UserPickerSheet;)V

    .line 303
    return-void
.end method
