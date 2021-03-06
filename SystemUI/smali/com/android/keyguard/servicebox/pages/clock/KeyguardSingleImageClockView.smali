.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSingleImageClockView.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;


# instance fields
.field private DIGITS:[I

.field private mCacheKey:Ljava/lang/String;

.field private mColon:Landroid/widget/ImageView;

.field private mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

.field private mDateView:Lcom/android/keyguard/KeyguardTextClock;

.field private mHour10th:Landroid/widget/ImageView;

.field private mHour1th:Landroid/widget/ImageView;

.field private mMin10th:Landroid/widget/ImageView;

.field private mMin1th:Landroid/widget/ImageView;

.field private mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

.field private mTimeImageSet:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_2:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_3:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_4:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_5:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_6:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_7:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_8:I

    const/16 v2, 0x8

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_9:I

    const/16 v2, 0x9

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->DIGITS:[I

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    invoke-direct {v0, p1}, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    :cond_0
    return-void
.end method

.method private setDIGITSArrayImage(Landroid/widget/ImageView;I)V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->DIGITS:[I

    array-length v1, v2

    if-ltz p2, :cond_0

    if-ge p2, v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->DIGITS:[I

    aget v2, v2, p2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KeyguardSingleImageClockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->DIGITS:[I

    aget v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setHour(ZI)V
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mHour1th:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mHour10th:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mHour1th:Landroid/widget/ImageView;

    rem-int/lit8 v2, p2, 0xa

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    div-int/lit8 v0, p2, 0xa

    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mHour10th:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mHour10th:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mHour10th:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public changeHourFormat()V
    .locals 0

    return-void
.end method

.method public getClockCacheKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public hangBackgroudImageOnTheClock()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->theme_single_textclock_bg_image_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->theme_textclock_bg_image:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_time_image_view_set:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mTimeImageSet:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_time_image_hour_10th:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mHour10th:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_time_image_hour_1th:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mHour1th:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_time_image_minute_10th:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mMin10th:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_time_image_minute_1th:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mMin1th:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_time_image_split_hour_time:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mColon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mColon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->clock_colon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_date_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTextClock;->setShowCurrentUserTime(Z)V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_shamsi_date_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardTextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardTextView;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->isLTRClockLayoutDespiteArabic()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mTimeImageSet:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    :cond_1
    return-void
.end method

.method public refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v6, p3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v6, p3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    sget-boolean v6, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v7, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    invoke-virtual {v7}, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;->getDateInPersianCalendar()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string/jumbo v6, "KeyguardSingleImageClockView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "refreshTime() min:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", hour:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", hour_day:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/util/SettingsHelper;->is24HourModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v3, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->setHour(ZI)V

    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mMin1th:Landroid/widget/ImageView;

    rem-int/lit8 v6, v4, 0xa

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mMin10th:Landroid/widget/ImageView;

    div-int/lit8 v6, v4, 0xa

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    return-void

    :cond_1
    if-nez v1, :cond_2

    move v1, v5

    :cond_2
    invoke-direct {p0, v3, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->setHour(ZI)V

    goto :goto_0
.end method

.method public setClockCacheKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mCacheKey:Ljava/lang/String;

    return-void
.end method

.method public setCoverState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public setDateVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    return-void
.end method

.method public updateChildViewsLook()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleImageClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    return-void
.end method
